%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 2: variables
% 
% - Skills introduced: 
% --- Defining variables in  Matlab
% --- Basic variable types
% --------- Numeric (/double)
% --------- Boolean/logical 
% --------- Character (/string)
% --------- Vectors
% --------- Cell arrays
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_2 in your personal
% directory inside comppedagogy. 
% *** 

%% Defining variables in Matlab

% 1. Variables are basically like what you learned in algebra---a value (or set of values) that can change, but is referred
% to by the same name. For example, you may have seen in worksheet 1 that the variable "ans" kept changing as you did
% different commands at different times. 
pwd % creates a "dummy" variable ans, which is just the answer returned by asking Matlab what your current working directory is

% 2. If you want to call the answer to pwd something different (i.e., make a different variable), you can assign it as such.
% Here, we are making a variable named workingDir that has the value that the command pwd returns. 
workingDir = pwd

% 3. You can make other variables that are set based on variables that already exist. So we can make a variable called
% oldWorkingDir, which is set as whatever workingDir is right now: 
oldWorkingDir = workingDir

% We can also change existing variables to be something else simply by redefining them. First, navigate to a directory other
% than the one where you were when you first defined workingDir. Then run the line (be sure to highlight the whole line,
% including the semicolon, before you either hit F9 or copy/paste) 
workingDir = pwd;

% ***
% Homework item 1: Do you expect oldWorkingDir and workingDir to be the same value?  Why or why not?  Use the Workspace
% window to examine these variables and check your answer. If you were wrong, try to figure out why. 
% 
% Use vi to create a text file in your Worksheet_2 directory with your explanation and thought process, called
% LASTNAME_homework2.txt
% ***

% 4. Suppressing output: you may have noticed that the = sign in the previous commands is highlighted in brown and underlined
% in red (except for the command with a semicolon after). Run the following two commands, one at a time: 
firstVar = 1; 
secondVar = 2

% Both of these should have created variables that appear in your Workspace, but only the second one should have produced
% "verbose output" in the command window. The semicolon after the variable definition is how you tell Matlab that you don't
% want this verbose output. In both of these cases, the value is getting assigned to the variable. It's kind of like sending
% a letter certified mail: in the verbose case, you're getting explicit confirmation back from Matlab. Silencing with the ; 
% is useful in long scripts with lots of variable definitions, when you don't want Matlab to
% be vomiting a bunch of variable values into your command window. 

% 5. If you are working with a bunch of variables and have forgotten the value of one of them, you can ask Matlab what it is
% simply by typing in its name in the Command Window and hitting enter
workingDir
firstVar

% (Note that Matlab is highlighting and underlining the entire variable here. To see what Matlab wants to tell you, you can
% hover over the bit it is highlighting, and it will give you a suggestion.) 

% The Variables window is more useful when you are dealing with complex variables (arrays and structures) 

% 6. Clearing variables: sometimes you want to be rid of a variable. You can clear this variable from your workspace by using
% the command clear and then the name of the variable. E.g.:
clear workingDir
clear secondVar

% These variables will now vanish from your Workspace. If you try to recall their values, you will get an error: 
workingDir
secondVar

% Now your workspace should be empty. 

% 7. Variable names. Variable names must: 
% --- a. Be one continuous string: 
variable name = 1; % error
variableName = 1; % no error. Note that this type of capitalization is called camelCase (https://en.wikipedia.org/wiki/Camel_case)
% --- b. Start with a letter
_variableName = 2; % error
variable_name = 2; % no error
2variable = 2; % error
variable2 = 2; % no error
% --- c. Only consist of letters, digits, and underscores
variable-2 = 3; % error
robin'sVariable = 3; % error
variable_2 = 3; % no error

% Variable names should also be informative. 
x = pwd; % bad variable name
workingDir = pwd; % good variable name 

% This isn't a requirement that will break Matlab, but it will break your collaborators' brains. 

% 8. Now that you have a bunch of nonsense variables, you may want to clear everything to start the next session fresh. 
clear all 

%% Basic variable types

% Before doing this section, define the variables: 
% --- workingDir as the result of pwd
% --- numVar as 5

% 1. There are different types of variables in Matlab. Right now, you have two different variable types in your workspace:
class(workingDir)
class(numVar)

% The command class(variable) returns the type of variable that the enclosed variable is. These classes are important because
% different classes of variable behave differently, and have to be defined differently. 

% 2. The most simple type of variable is the double type, which basically means that it is a number. For example, 
numVar = 6; 
addedVar = numVar + 10; 
superVar = numVar + addedVar; 

% For these types of variables, you can basically handle them like math! x = 6, y = x + 10, z = x + y. 

% 3. Character variables are slightly different. Remember when we did this command? 
oldWorkingDir = workingDir; 

% This didn't make a variable called oldWorkingDir whose value was "workingDir", but rather a variable that had the value
% that the variable workingDir was (i.e., the current working directory). To make a character variable, you have to enclose
% the string in single quotes: 
aCharVar = 'string'; 

% The string inside the quotes can have basically anything you want: spaces, numbers, whatever: 
aCharNumber = '2'; 
aCharSentence = 'this is a sentence'; 

% ***
% Homework item 2: what command would you ACTUALLY use if you wanted to make a variable called oldWorkingDir be the string
% workingDir? You can experiment in the Matlab command window until you have it right. Remember that you can recall the value
% of a variable by typing in its name and hitting enter. 
% 
% When you have the command, use vi to edit your homework text file to include this command. 
% ***

% 4. Variables can also be booleans or logicals, meaning true (1) or false (0). In SMNG, we prefix our boolean variables with
% a b, like bTestMode. 
bTestMode = 1; 

% This means that it is true (1) that we are in test mode. 

% 5. Variables can be more complex than a single number or a single string. You can store many numbers together, which is
% called a vector: 
newVector = [1 2 3 4 5 6]; 

% The [] braces indicate that you're defining a vector, rather than a single value. 
newVector = 1 2 3 4 5 6; % error

% You can think about vectors like an excel spreadsheet, or a table of any sort. The spaces between the numbers in []
% indicate that you want all the numbers to be in the same ROW. You can also indicate this with a comma
anotherVector = [1, 2, 3, 4, 5, 6]; 

% If you want to test for the equivalency of newVector and anotherVector, you can use the function isequal(var1,var2): 
isequal(newVector,anotherVector); 

% *** 
% Homework item 3: This command gives you a logical variable as the answer. Are these two variables the same? How do you
% know? Include your answer in your homework 2 text file. 
% *** 

% If you wanted to put every number in the same COLUMN instead, you use a semicolon as a separator. 
columnVector = [1; 2; 3; 4; 5; 6]; % The last value can either have or not have a semicolon---it doesn't change anything

% *** 
% Homework item 4: Do you think anotherVector and columnVector are equivalent? Why or why not? Include your reasoning and the
% command you would use to determine this in your homework 2 text file. 
% ***

% 6. Similarly to putting together many numbers, you can also put together many strings. This is called a cell array. 
aCellArray = {'a' 'b' 'c' 'd' 'e' 'f'}; 

% For cell arrays, you use {} curly brackets instead of [] square brackets---using [] gets you a very different result! 
aConcatenatedString = ['a' 'b' 'c' 'd' 'e' 'f']; 
aCellArray
aConcatenatedString

% Doing the inverse is true too: using {} around a vector of numbers produces a very different result
aCellOfNumbers = {1 2 3 4 5 6}; 
aCellOfNumbers
newVector

% These might not look very different right now, but eventually they will be! 

% *** 
% Homework item 5: a matrix (pl. matrices) is basically a vector that has two (or more) dimensions, i.e. both columns and
% rows. How would you define a variable that was a matrix with 2 rows and 3 columns, where the first row was 1 2 3 and the
% second row was 4 5 6? 
% 
% Now do the same thing, but for a cell array, where row 1 has a b c, and row 2 has d e f. 
% 
% You can experiment in Matlab until you figure these out. When you have your solutions, edit your homework 2 text file using
% vi to include them. 
% *** 

% 7. You can also define empty variables, by using empty brackets: 
emptyDouble = []; 
emptyChar = {}; 

%%

% Don't forget to push your homework file when you are done! 
