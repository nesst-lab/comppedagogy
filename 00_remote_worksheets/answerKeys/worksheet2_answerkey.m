% Answerkey for worksheet 2

%% Homework item 1
% Do you expect oldWorkingDir and workingDir to be the same value? Why or
% why not? Use the Workspace window to examine these variables and check
% your answer. If you were wrong, try to figure out why. 
% ***

% No, they shouldn't be the same. oldWorkingDir was set using pwd when we
% were in a particular directory, and then we moved directories, and used
% pwd to set workingDir. pwd will change if you're in a different place, so
% the two variables will be different. 

%% Homework item 2

% What command would you ACTUALLY use if you wanted to make a variable
% called oldWorkingDir be the string workingDir? You can experiment in the
% Matlab command window until you have it right. Remember that you can
% recall the value of a variable by typing in its name and hitting enter. 
% 
% When you have the command, use vi to edit your homework text file to include this command. 
% ***

oldWorkingDir = 'workingDir'; 
% Note that Matlab now permits either single quotes ' ' or double quotes ""
% but many more old-fashioned Matlabbers will use ' ' because historically
% that was the only character used to define strings. 

%% Homework item 3
% This command gives you a logical variable as the answer. Are these two 
% variables the same? How do you know? Include your answer in your homework
% 2 text file. 
% ***

% Yes. Boolean variables use 1 for yes and 0 for no. Since the answer to
% isequal(x, y) was 1, these two variables are the same. 

%% Homework item 4

% If [1 2 3 4 5 6] is 1x6 because there is one row and six columns, what are the dimensios of columnVector? 
% 
% Do you think anotherVector and columnVector are equivalent? Why or why not? Include your reasoning and the
% command you would use to determine this in your homework 2 text file. 
% ***


% columnVector is 6x1 (six rows by one column) 

% No, they are not equivalent because Matlab takes into account the
% dimensions, not just the contents. You can determine that Matlab behaves
% this way with: 

isequal(columnVector,anotherVector)
