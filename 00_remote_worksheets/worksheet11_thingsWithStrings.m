%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 11: things with strings
% 
% - Skills introduced: 
% --- Concatenation
% --- Case changing
% --- String splitting 
% 
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_10 in your personal
% directory inside comppedagogy. 
%
% You'll need a LASTNAME_worksheet10.m file for this worksheet as well. Create this either via Matlab or
% via the command line. 
% 
% *** 

%% Changing case



%% String splitting

% 1. Sometimes you may have a longer string that has a certain character in between every word or important
% bit of information. For example, if you wanted to split a sentence into its individual words, each word is
% separated from the next by a space: 

mySentence = 'the cow jumped over the moon'; 

% The function strsplit() takes the string you want to split, and the character you want to split it by: 
sentenceParts = strsplit(mySentence,' '); 

% In this case, the single quotes enclose a space. The result of this is a cell array, where the first cell
% has the first word, the second cell has hte second word, etc. Note that the spaces are NOT there, so
% basically the split character is "deleted".

% ***
% Homework item : 
% What would the result be of a string split that split mySentence over the character 't'? How about the 
% character '_'? % Describe the outputs of this. 
% 
% Next, create two new variables that do these two tasks and compare your predictions to the results. Were you
% correct? If not, do you understand why? 
% ***

% 2. Once you have your individual split parts in a cell array, you can refer to them just like a normal cell
% array. For example,

secondWord = sentenceParts{2}; 






