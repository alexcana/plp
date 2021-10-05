# Programming Language Project
for CS 330: Structure and Organization of Programming Language


## The History behind Julia
>What is the name of your language?

Julia

>When/where was it created, and by whom? Was is written to address a particular problem or need?

Julia was created as an open-source project in 2009 by a group of four co-creators: ***Jeff Bezanson, Stefan Karpinski, Viral Shah, and Alan Edelman.*** Because these four computer scientists had programming backgrounds in different languages—some Matlab, some Lisp, some Python, Ruby, Perl—they came to a common agreement that while these languages were powerful and effective in what they were used for, there were tons of tradeoffs. They wanted to create a language that basically had it all. 

*from: https://julialang.org/blog/2012/02/why-we-created-julia/*

>What types of programming is your language primarily used for? If your language is multi-purpose, provide some examples of different projects it's been used for.

While Julia is described to a general-purpose language, programmers mainly use it for computational and numerical analysis. The most common uses for Julia are: general computing, parallel and heterogeneous computing, machine learning, scientific computing, data science, visualization and plotting.

One of Julia's most notable uses was that it was used by the Federal Reserve Bank of New York (FRBNY) to produce models of the United States economy. Julia was noted to be x10 times faster than MATLAB, the language previously used by the FRBNY. 

Julia has also been used locally, specifically by researchers from MIT that used Julia to better optimize Boston Public School Transportation routes. Through their finds using Julia, Boston Public Schools were able to eliminate 50 buses off the road and redirect $5 million per year of transportation funds to classroom funds.

*from: https://julialang.org/, https://juliacomputing.com/case-studies/*

>Where will you get information about this language when it's time to start programming in it? At the end of your assignment, provide a list of the names of books, website URLs, or any other resources that relate to your language in particular.

1. https://julialang.org/learning
2. https://www.coursera.org/learn/julia-programming
3. https://www.geeksforgeeks.org/julia-language-introduction/
4. https://juliabyexample.helpmanual.io/

## Getting Started with Julia
>What did you need to do to install the language?

You would need to install Julia, the language, onto your computer. You can do this by accessing the [official website for Julia](https://julialang.org/). There will be a button that will say "Download" + the current stable version of Julia. Clicking it will redirect you to the download page where you will be able to choose which version of Julia to download and for which operating system you have.

>Does this language come with a recommended programming environment? What is it? If not, how did you pick the one that you'll be using?

On the [official website for Julia](https://julialang.org/), they recomment using Juno, VS Code, Jupyter, Pluto.jl, Vim, Emacs, SublimeText, and NotePad++ for editors or IDEs.

>How do you run programs in that language?

Because I am choosing to use Visual Studio Code, the process is quite the same as almost any other language. Create a new file and select to code in the Julia language. Make sure to save your new file with a .jl extension. Enter your code and run the program, paying attention to any errors that may appear in the shell.

You can also just use the terminal to access Julia. Open the command prompt (on windows, search "cmd" in the task menu) and type julia. Enter in your code which works the same way as it does in Visual Studio Code.

For a simple example, I created a file called `helloworld.jl` which I used to test a program that prints out "Hello World". I made sure the compiler was set to the Julia language. For my code, I wrote:

`print("Hello World")`

Your output should be displayed right after you run the program.

*from: https://juliabyexample.helpmanual.io/*

>How do you write comments in your language?

Because Julia is very similar to Python, the comment feature works in the same manner. Placing a hash (#) before a line, segment, or word will comment it out.
