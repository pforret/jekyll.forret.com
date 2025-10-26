---
id: 283
title: Storing the SQL queries in the database
date: 2006-03-31T21:17:59+02:00
author: Peter
layout: post
guid: /2006/03/storing-the-sql-queries-in-the-database/
permalink: /2006/03/31/storing-the-sql-queries-in-the-database/
categories:
  - devops
tags:
  - sql
  - database
---
I want to outline something I developed something like 5 years ago, and that I was kind of happy with at the time: a way of saving all SQL queries inside the database itself. The reason for writing this is that it would really fit in with all the RubyOnRails and other programming frameworks that are created these days. If someone feels like creating a component/plug-in for it, that would be so nice&#8230;

If you have no interest in programming and/or database management, go hug somebody and skip this article.

**PRINCIPLE**  
In the most simple version, you have 1 extra table in your database that looks like this:

<pre>query_id   int % unique ID of the query
template   varchar(1000) % or even longer
var_list   varchar(255) % comma separated list of vars</pre>

An example:  
`[ 33 , "select * from users where user_id = %user_id% AND type = '%status%' " , "%user_id%,%status%" ]`  
Instead of constructing your SQL code in your (PHP) code by making one big string and then executing it, you call a function `my_exec_query(query_id,array_params)`  
This function will 

  * get the template text 
  * walk through the comma-separated list `var_list` and for each variable inside, look the corresponding value up in the array `array_params` (or this can be a dictionary or a hashtable).
  * when all substitutions are finished, execute the SQL code and return the result as (connected/disconnected) recordset or an array.

<!--more-->

  
The advantages of this approach are (without taking into account all kinds of optimisations that are possible):

  1. no SQL code in your programs.
  2. every version of the database contains the correct queries that work on it
  3. the SQL template can be reused in different location of the code
  4. the SQL template can be edited through a web interface
  5. all SQL activity goes through one component, making it the ideal place to add statistics: which are the slow procedures, which ones bring back the most data

Main disadvantage: if you execute it in the naive approach as above, you have to execute 2 SQL queries for each function call (1: fetch the query template and build the real SQL, 2: execute the real SQL). But that is easy to fix.

**OPTIMISATION #1: caching of the templates**  
You keep the whole table of queries in memory. When a specific query template or parameter list is updated, the new version is loaded into memory. Even if you would have 500 different queries, this would take something like 600KB in memory. That is normally not a problem (if the application servers have e.g. 2GB memory).  
If you have more than 1 application server, and a query template is edited from server A, the other servers (B, C) should be instructed to reload too. This smells like we need some versioning.

**OPTIMISATION #2: version control**

<pre>query_id   int % unique ID of the query
template   varchar(1000) % or even longer
var_list   varchar(255) % comma separated list of vars
version   int % version number
created   datetime % creation time of the query
modified   datetime % last modification date
remarks   varchar(100) % can contain author, ...</pre>

Every time we execute a query, we check if it was constructed with the current template version. If not, the template and parameter list are reloaded, and the query is reconstructed with the new template. If you're gonna do this every time, you might put it in a stored procedure.  
Another advantage: if we make an error while editing, chances are the procedure will not compile properly. That's alreadya good way of avoiding sloppy updates.

**OPTIMISATION #3: stored procedure**  
For each query, a stored procedure is created with variable @parameters.

<pre>CREATE PROC procedure_name
    [ { @parameter data_type } 
    ] [ ,...n ] 
AS sql_statement [ ...n ] </pre>

This stored procedure will check versions, but more importantly it can be precompiled (so your SQL server already knows which indexes and joins to use and in which sequence), and will run faster. But what significant name can we give it? `query_33` doesn't mean a lot to a database admin or a programmer.

**OPTIMISATION #4: taxonomy/significant names**  
We give each query a name. What I did was the following:

<pre>query_id   int % unique ID of the query
<strong>category  varchar(20)</strong>
<strong>name  varchar(20)</strong>
template   varchar(1000) % or even longer
var_list   varchar(255) % comma separated list of vars
(...)</pre>

The &#8216;category' is something like &#8216;user\_management' or &#8216;statistics' and the &#8216;name' is the name of the individual query: e.g. &#8216;insert\_user' or &#8216;top-tags'. You can also use the &#8216;category' to decide on who is responsible for editing. Or you could set-up a stronger authorisation scheme, with authors having editing rights on certain queries and not on others.  
The stored procedures that are automatically created will now have understandable name &#8216;user

**OPTIMISATION #5: how to give a variable number of parameters to a function**  
I started with a Dictionary (VBScript style) for the parameters: I created it, filled it with the variables I needed (maybe one, maybe 10) and used it as a parameter in the function call `my_exec_query(query_id,dict_params)`. This can also be done with (a pointer to) an array, a RecordSet, &#8230; Anything that maps &#8216;keys' onto &#8216;values' would work.  
Wordpress uses another trick: they use the URLencoding or [query string syntax](http://codex.wordpress.org/Template_Tags/How_to_Pass_Tag_Parameters#Tags_with_query-string-style_parameters): `wp_list_cats('exclude=10,11,12');`. This is basically a well-known way to do serialisation into a string; you could put them in an XML document too, but that's a lot of overhead.

**OPTIMISATION #6: error checking**  
When the substitution of variables in the template is done, you can still check for obvious errors: a `%PARAMETER%` that has not been substituted (forgotten?), a string where there should be a number (no enclosing quotes). You could think about ways to distinguish between required parameters (e.g. `SELECT * FROM users WHERE id = %ID%`) and optional parameters (e.g. `INSERT INTO log VALUES ('%PLACE%', '%ERROR%' )`). This can be done by adding a &#8216;!' after the name in the parameter list: `ID!` is obligatory, `PLACE` is not.  
One can also wonder wether we need the list of parameters as a separate field, we could also search the template text for any occurrence of `%[A-Z][A-Z0-9_]*%`. I just used the list because it made the substitution faster.

And I'm still forgetting truckloads of enhancements.

Now if someone is attracted by the advantages of this method, and wants to create a PHP/Python/Ruby component that neatly puts all this functionality into one package, let me know!