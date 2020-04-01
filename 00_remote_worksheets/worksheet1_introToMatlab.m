%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 1: intro to  Matlab
% 
% - Skills introduced: 
% --- Matlab interface and command basics
% --- The path
% 
% bRemote = 0; % For this worksheet, you do NOT need to be remoted into a SMNG computer. 
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Homework item 1: Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_1 in 
% your personal directory inside comppedagogy. 
% *** 

%% Matlab interface and command basics

% 1. Command window: much like the command line/git bash (windows) and terminal (mac), but with its own commands. However,
% some of them are the same. One at a time, copy and paste the following commands into the command window and hit enter
pwd 
ls
cd ..

% 2. Just like in the command line, you can comment out something if it is not part of a command. In Matlab, the comment
% character is %.  Putting two %% at the beginning of a row makes a section of code in Matlab that you can run as an isolated
% unit.
pwd this will cause an error
pwd % this will not

% 3. Current Folder: You probably noticed that something changed when you ran cd .. This is because you have changed your
% current directory, and the Current Folder window tells you what your current directory is. Using the Matlab command window,
% navigate into comppedagogy. NOTE that if you have terminal open, your working directory won't change for terminal, ONLY for
% Matlab. Matlab and terminal are working completely independently from each other. 

% *** 
% Homework item 2: After you've navigated into comppedagogy, take a screenshot of your Matlab window and save it in your
% Worksheet_1 directory. If you do not know know how to take a screenshot, go to this page: 
% https://www.itg.ias.edu/content/keyboard-shortcuts-capture-screen-shot-mac-os-x
% ***

% 3. Editor: if you open a script (like this one), it will appear in the editor. If you want to run a particular command, you 
% can highlight it and hit F9. Depending on what you asked it to do, the results will appear in a different place
ls % will appear in the command window 
pwd % will appear in the command window, but also in the workspace! (as ans)

% 4. Workspace: shows your your active variables and their values (or some information about them, if they are complicated
% variables). Right now you should have a variable named ans ("answer"), which was created when you ran the command pwd
pwd % 

% Now type into the command line (or run this command by highlighting and hitting F9)
ans

% This should give you the value of the variable ans, which should be your current working directory. (We will get into
% variables more in the next worksheet)

% 6. You can also double click on the variable "ans" in the Workspace. This will pull up another window, "Variables", and let
% you examine the variable ans. 

% *** 
% Homework item 3: You can rearrange your command/editor/workspace/etc. windows however you like. This includes popping them 
% out (I personally like my Variables window popped out, rather than docked), resizing (my Current Folder window is usually a
% little narrower than default), completely rearranging (my Workspace is on the right side of the screen instead of the 
% default left), etc. Make at least ONE change to your default so that your Matlab space is more intuitive to you. Take a 
% screenshot and save it to your Worksheet_1 directory. 
% 
% (If you actually liked everything at default, you can just change it back. If you've already made a change because you've 
% worked with Matlab before, just send a screenshot of your current space, as it will be different from default already.) 
% ***

%% The path 
% Make sure your Matlab working directory is comppedagogy

% 1. Take a look at your Current Folder window again. It will show all the existing folder names, but they will probably be
% mostly shown semi-transparently. This means that they are not on Matlab's current Path.  
% 
% What this means is that Matlab will not look in any of those folders to find something---be it a script or a data structure
% or anything. Using whichever method you prefer, run this command: 

basic_howManyDaysLeft

% You should get an error from this---Unrecognized function or variable 'basic_howManyDaysLeft'. This is because this
% function is in the folder 00_remote_worksheets, which is not currently in your path. There are two ways to solve this
% problem: 

% 2. Navigate into the 00_remote_worksheets directory, either by using the Matlab command window, or by double clicking on
% that folder in the Current Folder window.  Now run the command again: 
basic_howManyDaysLeft

% It should work now! (And now you should know how much time is left until the next BASIC meeting) 

% This of course is not a permanent solution, because functions are kept in lots of different places and you can't be in all
% folders at once! So navigate back to the comppedagogy folder. 

% 3. Setting the path
% Matlab has a path variable saved, which basically tells it where it is allowed to look for functions. You can set this
% variable temporarily (changes won't be saved for the next time you open Matlab) or permanently (changes will be saved). 
% 
% TEMPORARY METHOD(S)
% a. In the Current Folder window, right click on the 00_remote_worksheets folder, and click Add to Path > Selected Folders 
% 
% b. Run the following command
addpath('00_remote_worksheets') 

% This last method will only work properly if you are currently in comppedagogy. Otherwise, you can give its full path:
addpath('C:\Users\Public\Documents\comppedagogy\00_remote_worksheets')

% NOTE: if you are running your own Mac laptop's version of Matlab, you may have to change all the file separator \ to /

% Whichever method you used, you should notice that 00_remote_worksheets is now showing up at full opacity, rather than
% looking transparent. This means that it is on the path. 

% PERMANENT METHOD---can only do this if you are running your own laptop's Matlab, not if you are remoting in (you need admin
% privileges to save the path variable permanently on the lab computers) 
%
% Up on your scrolling menu bar on the top of Matlab, there should be a tab called "Home". About 3/4 of the way to the right
% there is a button called "Set Path". This will open a dialog box for you. Use the button "Add Folders" and add
% 00_remote_worksheets. Then hit "Save" and "Close". 

% 4. Make sure you are still up in comppedagogy. Now run the command again: 
basic_howManyDaysLeft

% ***
% Homework item 4: Once you have gotten the countdown on how much time you have left, create a text file using vi in your
% Worksheet_1 directory in the comppedagogy repo, called LASTNAME_homework1.txt
% 
% In the body of this text file, write down how much time there is left according to this script. Save and quit. 
% *** 

% 5. You can also remove directories from the path. Again, there are temporary and permanent ways to do this. 
% 
% TEMPORARY METHOD(s)
%
% a. In the Current Folder window, right click on the 00_remote_worksheets folder, and click Remove from Path > Selected 
% Folders 
% 
% b. Run the command
rmpath('00_remote_worksheets') % (or with full path)

% PERMANENT METHOD
% Use the Set Path button again, but this time highlight the 00_remote_worksheets folder from the menu list and hit Remove,
% Save, Close. 

%%

% *** 
% Homework item 5: Push all your changes! But remember to pull first :) 
% 
% If you have any questions about this worksheet or anything we've covered in BASIC, feel free to message the Basic Slack
% channel (if you think others might have the same question and would benefit---which is probably very likely!!) or DM Sarah
% and/or me in Slack if you'd rather ask privately. 
% ***
