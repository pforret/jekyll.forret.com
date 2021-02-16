---
id: 399
title: A Sudoku challenge generator
date: 2006-08-14T11:26:08+02:00
author: Peter
layout: post
guid: http://blog.forret.com/2006/08/a-sudoku-challenge-generator/
permalink: /2006/08/14/a-sudoku-challenge-generator/
categories:
  - science
---
When on holiday, one can kill time solving Sudoku puzzles. When one has done a dozen of those puzzles and one happens to have a wandering mind like mine, one starts wondering how those Sudoku challenges are created, and if it would be possible to describe an algorithm that can make such a scarcely filled-in 9-by-9 grid. Some sunny hours later one has a system that might work (I haven&#8217;t implemented it fully yet). For my future reference: here&#8217;s how I would do it.  
_REMARK: this algorithm is quite logical and as such, I seriously doubt I would be the first one to think of it. I can imagine that Sudoku puzzles are already made by the hundreds with a program that uses this or a quite similar system. I&#8217;m not claiming it&#8217;s an original &#8216;invention&#8217;, just a fun problem to tackle._

### Step 1: take a good root grid

Let&#8217;s start with an completely valid Sudoku filled-in grid. Any one would do, I take the one that has 1-2-&#8230;-9 in the top row, and in the top left 3&#215;3 square:  
[<img  src="http://static.flickr.com/79/214883343_eaaaf6e49e.jpg" width="500" height="383" alt="Step 1: start layout" />](http://www.flickr.com/photos/pforret/214883343/ "Photo Sharing")  
<!--more-->

  
If you&#8217;re not familiar with these puzzles: for a 9&#215;9 grid to be a valid Sudoku grid, the following 3 requirements should be fulfilled:

  1. for each row: every number from 1 to 9 should occur exactly once
  2. for each column: every number from 1 to 9 should occur exactly once
  3. for each 3&#215;3 square with a thicker border (there are 9 of them): every number from 1 to 9 should occur exactly once

### Step 2: shuffle the grid around

There are a couple of transformations that we can apply on a Sudoku grid while still keeping it in a valid state. They are:

  * swapping two rows in same group: when you swap 2 rows within the same &#8216;group&#8217; (within the 3&#215;3 borders), the Sudoku requirements remain fulfilled (I won&#8217;t include a formal proof, but trust me on this one).  
    [<img  src="http://static.flickr.com/74/214883346_ecd5918691_m.jpg" width="240" height="154" alt="Step 2: shuffle 2 rows or columns" />](http://www.flickr.com/photos/pforret/214883346/ "Photo Sharing")
  * swapping two columns in same group: the vertical version of the previous one.
  * swapping two groups of rows: when you swap two 9&#215;3 groups of cells, that keeps the grid valid too.  
    [<img  src="http://static.flickr.com/95/214883347_a63ba5863a_m.jpg" width="240" height="157" alt="Step 2: shuffle 2 row or column blocks" />](http://www.flickr.com/photos/pforret/214883347/ "Photo Sharing")
  * swapping two groups of columns: vertical version of the previous one
  * transposing the whole grid (the columns become the rows and vice versa)  
    [<img  src="http://static.flickr.com/83/214883348_c0b729624d_m.jpg" width="240" height="194" alt="Step 2: transpose whole grid" />](http://www.flickr.com/photos/pforret/214883348/ "Photo Sharing")

There are maybe other, more complex, transformations, but these will take you a long way. Maybe someone could prove that with these base operations all possible Sudoku grids can be constructed, or maybe on the contrary, that some combinations can never be reached. We don&#8217;t really care, as long as we can apply a random sequence of the above transformations to get a grid that seems kind of random but is still valid.  
You can compare this &#8216;shuffling&#8217; with the Rubik cube: you get it in the virgin state and then you shuffle it around to get a pseudo-random start situation.

### Step 3: erase a number of cells

This was the more tricky part. How many cells do I erase, and how do I make sure that the remaining challenge is still solvable, with only 1 solution?

  1. **number of cells to erase**: this is one of the most important factors that define the difficulty level of a Sudoku puzzle. There are 81 cells in a full grid, the &#8216;easy&#8217; puzzles have around 30-35 remaining cells, the intermediate 25-30, the difficult ones 20-25. These are indications based on real-life examples, not some kind of official law. One could probably make a 30-cell challenge that is unsolvable, or a 22-cell challenge that is considered &#8216;easy&#8217;. But let&#8217;s take these numbers as a guideline
  2. **random approach**: just erase 50 (easy) to 60 (difficult) cells at random. Very easy, but it is possible to make grids that are unsolvable. Consider e.g. a challenge with only the bottom 3 rows filled in (i.e. 27 remaining cells). There&#8217;s no single solution to that.
  3. **random with simple limits**: e.g. take as a limit that only N rows or columns may be empty. Taking N = 0 for easy challenges and N = 1 for difficult challenges could be a safe strategy. I&#8217;m not sure this is safe enough, so I made something even more refined.
  4. **random with level-1 check**: this would only erase the cell if it could be solved by a level-1 strategy. What do I call &#8220;level-1&#8221;? That is: if applying the sudoku rules (rows/columns/squares) only leaves 1 possible solution for that cell. To calculate this, you just take the nine possible values for that cell and strike out all numbers that already appear in that row, that column and that square. If you&#8217;re left with only one possible number, that&#8217;s a level-1 solution.  
    One remark on this: the first couple of cells you check will always be level-1 solvable (if there are already eight occurences of e.g. &#8216;5&#8217; in the grid, the ninth is always level-1 solvable). As the grid becomes emptier and emptier, some cells will not meet the level-1 requirement and will not be erased. There is a point somewhere where no more cells can be erased, but I&#8217;m not really sure where that point will be, and how variable it is (is it e.g. always between 20 and 30? Is it always 27?) I haven&#8217;t built a prototype yet so I can&#8217;t say. If this point would be too high (we want to make a &#8216;difficult&#8217; challenge and we can&#8217;t erase any cell anymore to get below 25), we might need a 2nd round of erasing that does not use the level-1 check.
  5. **random with level 2 check**: level 2 is where you need to make suppositions about a second cell in order to find the solution for the given cell. I&#8217;m not going into details (nor do I have all the details 🙂 ).
  6. row-per-row / column-per-column / square-per-square erasing: instead of jumping at random in the grid, check a (random) cell for each row sequentially, going from 1 to 9 and start over. This can help to make the distribution of remaining cells more even (e.g. every square has 2 &#8211; 4 cells left). The &#8216;simple&#8217; or &#8216;level-1&#8217; checks can be used like described above
  7. number-per-number erasing: instead of jumping at random in the grid, check a (random) occurrence for each number sequentially, going from 1 to 9 and start over. This can help to make the distribution of remaining numbers more even. The &#8216;simple&#8217; or &#8216;level-1&#8217; checks can be used like described above

The only way to make sure that the resulting algorithm actually works, would be to prove it mathematically (don&#8217;t feel that&#8217;s something I would want to do &#8211; certainly not step 3) or to build a proof of concept and let it run a solid number of test challenges (don&#8217;t have that much free time now). If anyone has better suggestions, don&#8217;t hesitate to leave a comment.