%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 11: things with strings
% 
% - Skills introduced: 
% --- Case changing
% --- String splitting 
% --- Excessively complicated sprintf
% --- Using string variables to make fields
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

% 1. Sometimes you have a word in a certain case---lower case, upper case, etc., and you want to change it to
% a different one.  
trialWord = 'gapper'; 

% Say you want to display trialWord in all caps on the screen. We can change this using the function upper(): 
fprintf('The word is %s\n',upper(trialWord))

% You can also go the other direction:
emphaticWord = 'CAPPER'; 
fprintf('He said %s quietly\n', lower(emphaticWord))

% 2. Recall that you can concatenate strings together to make a longer string by using []: 
aPhrase = [trialWord ' and ' emphaticWord]; 
fprintf('The phrase is %s\n',aPhrase)

% Also recall that you can get the nth letter of a particular string by indexing: 
secondLetter = trialWord(2); 

% What this means is that you can change the case of a single letter. For example, if you wanted to capitalize
% this name: 
name = 'sarah'; 

% Which number character do you want to be capitalized? 
upper(name(1))

% And you can attach that to the rest of the word: 
capitalizedName = [upper(name(1)) name(2:end)]; % remember the "end" keyword for indexing! 

% Or you could simply change the first character of the variable "name" to be capitalized: 
name(1) = upper(name(1)); 

% *** 
% Homework item 1:
% Write a code snippet that will assign the following sentence with "proper" capitalization to the variable 
% goodSentence 
% 
% sentence = 'sarah and robin are postdocs with the blab and smac labs at uw-madison.'
% ***

% ***
% Homework item 2:
% Now write another code snippet that will assign the same sentence with "sponge-bob capitalization" to the
% variable bobSentence. (Here, sponge-bob capitalization simply means that every other letter is lower/upper
% case.)
% 
% Note: the function rem(x,y) or mod(x,y) may be helpful here! 
% *** 


 

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

% 3. And you can loop over the contents of this array, like any other array

for w = 1:length(sentenceParts)
    
end






