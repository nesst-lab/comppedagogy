answerkey for worksheet 2


%1. Homework item 1: Do you expect oldWorkingDir and workingDir to be the same value?  Why or why not?  Use the Workspace
%window to examine these variables and check your answer. If you were wrong, try to figure out why. 

    'No: oldWorkingDir referred to the first directory I was in, and workingDir was redefined to be the one I am currently in.'
    
% 2. Homework item 2: what command would you ACTUALLY use if you wanted to make a variable called oldWorkingDir be the string
% workingDir? You can experiment in the Matlab command window until you have it right. Remember that you can recall the value
% of a variable by typing in its name and hitting enter. 
% 
% When you have the command, use vi to edit your homework text file to include this command. 
% ***
'oldWorkingDir = "workingDir"'

% 3.: This command gives you a logical variable as the answer. Are these two variables the same? How do you
% know? Include your answer in your homework 2 text file. 
% ***
'yes; in logic, 1 means yes and 0 means no. the answer to "is equal" is 1, or yes.'

% 4: 
% If [1 2 3 4 5 6] is 1x6 because there is one row and six columns, what are the dimensios of columnVector? 
% 
% Do you think anotherVector and columnVector are equivalent? Why or why not? Include your reasoning and the
% command you would use to determine this in your homework 2 text file. 
% ***

6x1
isequal(columnVector,anotherVector)
'No: dimensions matter. According to matlab, they are not equal.'