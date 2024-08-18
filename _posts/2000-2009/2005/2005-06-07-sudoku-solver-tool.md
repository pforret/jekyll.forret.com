---
id: 150
title: SUDOKU Solver tool
date: 2005-06-07T04:02:00+02:00
author: Peter
layout: post
guid: http://peter.smoothouse.com/2005/06/07/sudoku-solver-tool/
permalink: /2005/06/07/sudoku-solver-tool/
categories:
  - tool
---
I have just created a tool to help solve the [Sudoku puzzles](http://en.wikipedia.org/wiki/Sudoku): the [forret.com Sudoku Helper](http://www.forret.com/tools/sudoku.asp). I've added it to my [Forret tools](http://www.forret.com/tools/) directory.

>![](http://www.pixagogo.com/S5vpfnjbBPdPkijWo0PpDcLvtnjn03kN6S!zMiNj7SuLPSslxLKMt7ZZNgFtFcA5NVa9TlTrzp60cCYatNRWhZLeP6TiaBAXLkTTYyt!wQnTPGvKJHobLotbLesFJkvJ8T31npvZcLYl0_/sudoku.jpg)  
> You solve a Sudoku puzzle by filling in numbers (1-9) in a 9&#215;9 square. 
> 
>   * **Rule 1**: every **row** should contain ALL 9 numbers, and no number can occur more than once. 
>   * **Rule 2**: every **column** should contain ALL 9 numbers, and no number can occur more than once. 
>   * **Rule 3**: every **3&#215;3 square** should contain ALL 9 numbers, and no number can occur more than once.
> 
> (see also [sudoku.com](http://www.sudoku.com))

[De Morgen](http://www.demorgen.be) (Belgian quality newspaper) has just started printing such puzzles in every issue, and they are an addictive hobby. Here they are: the [EASY](http://www.forret.com/tools/sudoku.asp?title=De+Morgen+-+June+6+-+EASY&F00=&F10=8&F20=1&F01=&F11=3&F21=&F02=&F12=&F22=&F30=&F40=7&F50=&F31=&F41=&F51=&F32=&F42=&F52=&F60=9&F70=&F80=&F61=&F71=6&F81=&F62=&F72=3&F82=&F03=8&F13=1&F23=2&F04=&F14=9&F24=5&F05=&F15=&F25=&F33=&F43=&F53=&F34=&F44=&F54=8&F35=&F45=9&F55=&F63=&F73=&F83=&F64=&F74=1&F84=&F65=&F75=&F85=6&F06=3&F16=4&F26=9&F07=&F17=2&F27=&F08=&F18=6&F28=&F36=2&F46=&F56=5&F37=9&F47=&F57=&F38=1&F48=3&F58=&F66=&F76=&F86=&F67=4&F77=&F87=&F68=8&F78=2&F88=), [MEDIUM](http://www.forret.com/tools/sudoku.asp?title=De+Morgen+-+June+6+-+MEDIUM&F00=&F10=5&F20=1&F01=7&F11=&F21=&F02=&F12=&F22=&F30=7&F40=2&F50=6&F31=&F41=&F51=&F32=1&F42=9&F52=&F60=9&F70=8&F80=&F61=&F71=&F81=&F62=&F72=&F82=&F03=&F13=2&F23=8&F04=9&F14=&F24=&F05=&F15=1&F25=&F33=&F43=7&F53=4&F34=6&F44=&F54=3&F35=5&F45=&F55=&F63=&F73=&F83=&F64=&F74=&F84=4&F65=&F75=3&F85=&F06=5&F16=&F26=&F07=&F17=&F27=6&F08=&F18=9&F28=7&F36=&F46=&F56=7&F37=2&F47=3&F57=&F38=4&F48=&F58=&F66=1&F76=&F86=&F67=4&F77=&F87=&F68=&F78=&F88=) and [ADVANCED](http://www.forret.com/tools/sudoku.asp?title=De+Morgen+-+June+6+-+ADVANCED&F00=&F10=&F20=&F01=5&F11=8&F21=7&F02=&F12=6&F22=&F30=&F40=&F50=&F31=&F41=&F51=&F32=&F42=&F52=&F60=9&F70=&F80=&F61=&F71=&F81=&F62=&F72=4&F82=1&F03=3&F13=&F23=&F04=&F14=1&F24=&F05=&F15=&F25=9&F33=8&F43=&F53=&F34=4&F44=&F54=&F35=&F45=2&F55=&F63=&F73=&F83=&F64=&F74=2&F84=9&F65=7&F75=1&F85=&F06=&F16=4&F26=1&F07=&F17=&F27=&F08=7&F18=&F28=8&F36=&F46=&F56=&F37=&F47=9&F57=&F38=&F48=&F58=5&F66=&F76=&F86=&F67=&F77=&F87=&F68=&F78=&F88=) one for Monday June 6, 2005.

My Helper just checks the 3 rules above and will indicate which cells can easily be filled in because there is only 1 option left. Yes, it can be kind of a spoiler, so only use it to get out of a deadlock, or if you're in a hurry, or to show off. 

The more difficult puzzles will require you to cunningly plot your strategy 2 or 3 steps ahead, which my Helper page will not do or help you with. If you want to spoil even these brain gymnastics, check [Sudoku Solver by Logic](http://www.sudokusolver.co.uk/index.html)

For those of you who like a client program that can work off-line, check [Sudoku Solver](http://www.sudoku-solver.com/) (Windows &#8211; free).