Required Software
========================================================

You should install the following software:

## **R** and *RStudio*
**R** is the language and comes with a functional console and a simple GUI in the case of Windows. But to make your life simpler and to author documents for this class, you'll be using a wonderful work enviroment for **R**, called RStudio.

+ Go to http://cran.r-project.org/ and follow the download link for your OS (Windows, Linux or MacOS X)

+ Install **R** 

+ Go to http://www.rstudio.org/ , download and install RStudio

+ Once installed, open **RStudio** as Administrator (in Windows, right-click on R, then choose the option Run as Administrator; in Linux, do sudo R), go to the *Packages* tab, click on *Install Packages* and type *ctv*. This will install the *ctv* package. Next, load the package by typing `library(ctv)` in the Console or by checking the box next to ctv in the Packages list.

+ After loading `ctv`, type  in the console this command `install.views(c("Econometrics", "ReproducibleResearch"))`. This will install two Task Views. While you computer downloads and installs them, take the time to visit the Task View pages on Cran: http://cran.r-project.org/web/views/ . In particular, don't miss to see the pages for Econometrics and Reproducible Research

+ Be thankful for the people behind these Task Views, just go to this page and see how many packages are in Cran!: http://cran.r-project.org/web/packages/

+ Familiarize yourself with the existence of R manuals and the help pages for every package. In addition, RStudio comes with a set of nice and concise Docs, and there several video tutorials for both R and RStudio. Take a few minutes to discover some of them. One site worth exploring is http://www.r-bloggers.com/

## **Git** and **Github**

Let me introduce you to a great little thing: Git ... and Github, which is fairly neat, too. In its own words, Git is "free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency". Github it's an internet site with lots of features to make your life easier when working with Git. So you should 

+ **Install GIT and GITHUB client** (if it applies). Create an account on GitHub.com. If you are working on Windows (or Mac), I suggets you download github's native app and run it to set up everything it's a breeze: https://help.github.com/articles/set-up-git#platform-windows . If you are in Linux, follow the instructions in https://help.github.com/articles/set-up-git#platform-linux

+ **FORK my repo!**: Now, go to https://github.com/ricardomayerb/macro-theory-UDP and just **FORK** this repository (macro-theory-UDP). There is a button called Fork. Click on it. In this way, a repository with identical name (macro-theory-UDP) but in YOUR online github account.

+ **"Download"** (clone, really) **your forked version (appearing in your account) to your PC**: add the end of this step, it should create a folder under Documentos/GitHub/ in your PC with all the files of your newly created remote repository (which right now is just a copy of what I had when you forked my repo). For this step you have to options:
    + If you have the GitHub client installed, it should detect all your remote repositories in github (that's why, when you first installed this client, it asked you for your username and password). It should show you local repsoitories and github repositories. If you click on github repositories, you should see a CLONE option written in blue. Click on it and it will start downloading all files from your remote repo.
    + Use the GitHub Shell (or equivalente, like git bash) that is already installed and follow the instructions from Step 2, in this guide: https://help.github.com/articles/fork-a-repo
    
+ **Establish a connection with my original repo**: Until this step, all the communication will be exclusively between your local copy of your repo and your remote copy of your repo. In order to obtain or contribute files to my repo, you need to add an upstream repository (it signals the ancestor of forked repo). Open a shell in the directory of your local repo macro-theory-UDP and follow the instructions of Step 3, from the same guide as before, https://help.github.com/articles/fork-a-repo
    + Notice that in the example, you have to use the address of my repo, instead of the one provided as example. The address of my repo is https://github.com/ricardomayerb/macro-theory-UDP.git     You have to copy this EXACTLY.



