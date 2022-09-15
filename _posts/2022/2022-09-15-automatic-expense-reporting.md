---
title: "Idea: Automatic Expense Reporting"
layout: post
permalink: /2022/09/15/automatic-expense-reporting/
image: /wp-content/uploads/2022/09/unsplash.expense.jpg
categories:
    - idea
tags:
    - finance
    - application
    - accounting
    - creditcard
    - receipt
---

Every end of the month, as I spend several hours getting on top of all my receipts, expenses and invoices, scanning barely legible paper tidbits with my phone,
I'm thinking to myself, surely there must be a better way? I mean, we are 2022, after all?

![Automatic Expense Reporting](/wp-content/uploads/2022/09/unsplash.expense.jpg)

I've already put some effort in making the experience, for someone who is as _admin-phobic_ as I, 
as pleasant as possible. Actually, I've _gamified_ it! 

I use [Zoho Expense](https://www.zoho.com/expense/) to scan my (restaurant) receipts, 
correct the data after OCR scanning and assign each receipt to the right report.
I have one report per external customer for stuff that should be invoiced to them, 
and one for stuff that is for my own company.
Zoho Expense has an iPhone app for scanning receipts, 
takes care of the OCR (which is 75% accurate, say),
in the cloud, converts everything to &euro; if necessary, 
and then lets me generate a PDF file with the subtotal per expense report 
and a copy of all the receipts.
Finishing my expense reporting feels like accomplishing a mission. 

> "You have slain all the villains and can now enjoy a well deserved beer in the tavern".

Then that PDF goes to [factuursturen.be](https://www.factuursturen.be/?a=3952). 
Every PDF is auto-scanned (which is correct 95% of the times) 
and since I also create and send my outgoing invoices from there, 
I have a good overview of all that's coming in and going out.

![Automatic Expense Reporting](/wp-content/uploads/2022/09/unsplash.receipt.jpg)

But that first phase, scanning folded, wrinkled, far-from-immaculate receipts with your phone feels so ... clumsy.
While I was cataloguing my 75 receipts this month, I thought: how could this be better?

## What are we trying to do?

We want a [(simplified) VAT receipt for every purchase](https://www.accountancyoffice.co.uk/what-is-a-vat-receipt/) from a company. We need the following information:
  * the vendor's name (and address?)
  * the vendor's VAT number
  * the date/time of the transaction
  * the type of the transaction (food/gas/paper/...)
  * the amount paid
  * the part of that amount that is VAT (6%, 21%, ...)
  * some unique ID number

## 1. Get rid of the paper

First I thought: printing receipts on small pieces of paper, most often with a thermal printer, 
is a **low bandwidth** and **low reliability** data transfer method. 
Let's replace that with something digital, like a QR code.
Imagine that a payment terminal could show a QR code after every payment, 
that contains all the required VAT receipt information, easy to scan with your phone.

## 2. Use the middle (bank) man
But then I thought: why not use the middle man, i.e. the payment provider/bank? 
At the time of the payment, the payment provider knows: 
* the vendor's name
* the vendor's VAT number
* the date/time of the transaction
* <strike>the type of the transaction (food/gas/paper/...)</strike>
* the amount paid
* <strike>the part of that amount that is VAT (6%, 21%, ...)</strike>
* some unique ID number

So all that is missing is:

* **the type of goods/services sold**: this could be always be the same for a certain business
  (e.g. a bar/restaurant/gas station), or it could be something the customer could add later.
* **the part of that amount that is VAT**: this could be always be the same for a certain business
  (e.g. a bar/restaurant/gas station), or it could be something the customer could add later

Then it hit me: this would be so easy to add to my [Curve credit card](https://www.curve.com/en-gb/).

> (a Curve Card is kind of a _proxy credit card_. You pay with it, and the transactions go off of your regular credit cards. 
> It is 1 single card that allows you to use multiple 'real' credit card accounts. )

Well, wouldn't you know, they (almost) have something like that. 
Curve can send you email receipts of each transaction.

> ![Curve Email Receipts](/wp-content/uploads/2022/09/screenshot.curve.png)
> [via help.curve.com](https://help.curve.com/can-i-have-my-receipts-emailed-to-me-BJm5H_2L_)

The only things that are missing:
* assign each transaction to an expense report. Right now, I can assign each transaction to a specific credit card
, which is nice for work/private distinction, but if I need 4 different expense reports for 4 external clients, 
I don't want to have 4 separate credit cards.
* specify type of expense
* specify amount of VAT
* export expense report to PDF, CSV, ...


Instead of a card provider adding expensing features, there is also an expensing expert offering their own card: 
the [Expensify Business Credit Card](https://use.expensify.com/card)

> ![Expensify Card](/wp-content/uploads/2022/09/screenshot.expensify.png)
> However, this seems to be a US-only solution.

As far as I can see now, there is no EU-compatible solution for the SME market.