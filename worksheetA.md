## SMNG's BASIC (BLAB And SMAC Intro to Computing) series
### Worksheet A: intro to using the command line 
 
#### Skills introduced: 
* Command line basics
  * Navigating through directories
  * Creating, deleting, removing directories and files 

----------------------------------------------------------------------------------
#### Before going through this worksheet, you should:**
* Have a github account. If not, create one, and tell Robin so that you can add your own files to this repository. 
* Have installed either git bash (if you are on a PC) or know how to open the terminal (mac). If you don't have this, [here is a guide](https://kb.wisc.edu/smng/internal/106101)
----------------------------------------------------------------------------------
### Directory structure, paths, navigation

#### 1. Open git bash (PC) or your command line (terminal program, mac). 
#### 2. When you open an instance of your command line, you will automatically start in your "home" folder. That folder varies from computer to computer, so you might want to ask your command line to print out where you currently are located. To do that, type the following command into your terminal and hit enter: 

`pwd` 

This stands for "**p**rint **w**orking **d**irectory". Your working directory is where you currently are "doing work". 

#### 3. Say you want to switch into a different directory, but you don't know what all folders exist in your working directory. You can find out: 

`ls` 

This "**l**i**s**ts" the contents of your current directory. 

#### 4. Now that we know what directories (folders) exist, we can move into one! Pick a directory. Directories should have a / after the name; files should have their file extension (.mat, .doc, .pdf, etc.). 

`cd DirectoryName`

Where you put in the name of your directory instead of DirectoryName. If you get back an error, some common culprits:
* There is a typo in your directory's name (every little thing matters)
* There is a space in your directory name, and command line doesn't like that. Try putting quotes around "Your Directory Name", e.g. 

`cd "Actual Final Drafts"`

(cd stands for **c**hange **d**irectory)

#### 5. Now type `pwd` again. Your new working directory should be the directory you just moved into. 
#### 6. You can go infinitely downward into folders using just `cd` and directory names, but what if you wanted to move into the folder that CONTAINS your working directory? The command line uses .. to denote moving up a folder. Try this, to get back into your original working directory: 

`cd ../`

If you type in `pwd` again and hit enter, you should get your original working directory. 

#### 7. As you found out in item 3, `ls` simply lists the contents of your working directory, but doesn't list the contents of other directories contained in your directory. But you can actually list the contents of other directories if you put the name of the directory after `ls`, like you did for `cd`. For example, using the same directory name that you used in item 6, enter: 

`ls DirectoryName`

This should list the contents of the directory with DirectoryName. 

#### 8. You can also combine the `..` functionality with ls to list the contents of a directory higher up in the tree. What would this command look like?
1. First, change directory into your chosen DirectoryName. 
2. Then, using `ls` and the `..` functionality, list the contents of the directory you were previously in. (You can play around until you get this) 

# Application check: if you wanted to list the contents of a folder other than the one that you are currently in, without moving into it, how would you do that? 

# Application check: What if you wanted to go up multiple levels of folders?  Say you were in C:/Users/Public/Documents and you wanted to go to C:/Users

# Note: if you have a computer with multiple drives, switch with cd /letter, i.e. to get to the M: drive, cd /m (for git bash), or cd /Volumes if you are on a Mac.

# 5. You can also create directories from the command line: 
mkdir robinsNewDirectory # "make directory" 

# 6. Whoops, you put this directory in the wrong spot! You want it in the directory above the one you're currently in. 
mv robinsNewDirectory ../ # "move" 

# 7. Ope, turns out you were right to begin with, you did want it in the original directory. How do you move it back? 
mv robinsNewDirectory # _____? 

# This will produce an error for you. Why? 

# Remember to define your target directory relative to where you are! It is currently in the directory above you, so how would you refer to its path? 

# 8. Okay, now we know the first half of this command, but we need to know what destination is. How do we refer to the directory we're currently in? : mv ../robinsNewDirectory/
./ # 

# Now try the whole command. 

# 9. All right, now we've got the directory back where we want it, in the working directory (wd). What will this do? 
mv robinsNewDirectory testdir

# Assuming you don't have a directory in your wd that is called "testdir", it will RENAME the directory "testdir"

# 10. Change the name back to the original name, and now create another directory called "testdir"

# 11. What do you think will happen if you do this command now? 
mv robinsNewDirectory testdir

# 12. Okay, now we're done with these directories. You can remove them with the command line as well, with rmdir (ReMove DIRectory). How would you remove JUST robinsNewDirectory (i.e., how do you refer to robinsNewDirectory from your wd)? 
rmdir testing/robinsNewDirectory
# or
rm -rf testing/robinsNewDirectory

# Now also remove the "testing" directory

################################
# Intro to git

# 1. Okay, now we're ready to start getting into git. Navigate into C:/Users/Public/Documents. 

# All of you should have been added to the git repository comppedagogy, and also accepted your invite---if you haven't, do that now. 

# 2. When you're in git bash and doing git specific commands, you need to preface them with git, e.g. git status. 

# 3. Another example is making a copy of a repository ("repo") on your local drive aka cloning the repository.
git clone https://github.com/blab-lab/comppedagogy

# This command clones the folder "comppedagogy" and any folders and files inside it into the directory where you have run the clone command from.

# Application check: how can you test whether comppedagogy has anything inside it?

# Note: now that you have cloned this repo, you can access the text file "worksheet" we are using today, from the directory 00_remote_worksheets.  

# Now change directory to comppedagogy.
cd comppedagogy

# 4. Now we are going to create a new text file and put it in comppedagogy without ever leaving the command line! We are going to use a program called vi. It's best to think of this program as one where you are telling someone else to do the writing for you, like "now we are going to write some text! Now we are going to save! Now we are going to write some text again!" Once you are familiar with the program, you'll see how it can be a convenient tool that avoids some weird things like ghost characters that notepad or other programs can introduce. Anyway, end vi talk.

# vi myfirstvi_yourlastname.txt
# so for example

vi myfirstvi_Bakst.txt
vi myfirstvi_Karlin.txt

# When you first open up vi, you are in command mode. That is, vi accepts commands, which are combinations of characters.
# Now type the letter i, which will take you into "insert" mode; now vi will know that the keys you are typing are intended to create text in your document rather than send commands to the program.
# you'll see --INSERT-- appear at the bottom left corner of the window. I am currently writing this in vi, so that is what I see at the bottom left corner of my own terminal window. 
# Type whatever you want, eg "vi is the best!" 
# When you are done typing, press esc.
# To save, type :w (the colon is important, as is the lowercase w) and press enter.
# To quit, type :q (again, colon and lowercase q are important). Press enter.
# The file has gone away! But where am I? 
# Check where you are...
# Did I create a new file?
# Check the contents of the current directory.

# 5. Awesome, you created a file! Now suppose you want to track changes to this file and make sure that this version appears on the computer of everyone who wants to have access to everything in the repository. Github needs to track the file, and to do that, it needs to know the existence of it.

git add myfirstvi_NAME.txt # instead of NAME, your last name of course.
# alternatively, try tab completion.

# 6. Now you have added the file to a list of changes to be tracked by git. But now you need to "commit" your change, or get it ready to send off to the repository. You must also add a message (with the -m "flag") saying what new changes there are to the file. This is important for tracking changes to the file over time.

git commit -m 'created my first file in vi' # you must use quotes around your message (in git bash you can also use double quotes, "created my first file"). Don't use an apostrophe in the message itself. 

# 7. Ok, time to send off your changes! A "push" takes whatever is in your own local version of the repository and essentially overwrites what's in the repository online. That means it's good practice to make sure your version is totally up-to-date with whatever is online. For example, if you and your co-author are both editing the same file at the same time and one of you pushes your changes and then the other does, one person's changes could get overwritten. For us right now, this shouldn't matter because we are all working on unique files, but this is a very good habit to be in. So first:

git pull # bring in changes from the repository. Normally this will not cause any problems.

# then

git push

# 8. Now try making changes to your textfile. Follow the commands in steps 4-7. The steps remain the same even though that file already exists. Remember to type "i" to "insert" text! You can also try deleting some text and then pushing those changes.

# 9. After you have toyed around editing and pushing, go to https://github.com/blab-lab/comppedagogy. Do you see the commit messages in the second column? Try clicking on one and see how github represents the commit history.


### MORE FUN WITH VI ###
Excited about vi? See more on basic commands here: https://www.cs.colostate.edu/helpdocs/vi.html and some fancier things here: https://www.ccsf.edu/Pub/Fac/vi.html



Originally presented by Robin Karlin and Sarah Bakst on February 12, 2020.
Subsequent edits by Robin Karlin and Chris Naber (February 2021) 
