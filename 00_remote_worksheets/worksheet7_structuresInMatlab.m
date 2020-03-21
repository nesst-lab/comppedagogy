%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 7: Matlab structures
% 
% - Skills introduced: 
% --- Matlab structures
% --- Indexing in Matlab structures
% --- The "data" output from Audapter
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_7 in your personal
% directory inside comppedagogy. 
%
% BONUS: you'll need a LASTNAME_worksheet7.m file for this worksheet as well. Previously we've asked you to
% create this file while in the Matlab environment, but you can actually do this via Terminal (/git bash) as
% well! However, rather than telling you what the necessary command is for this, try using google to figure
% out what you need to do. Googling is a very useful skill for all programmers! If you can't figure it out,
% don't worry, just create the .m file the normal way and we can talk about it in office hours or during BASIC
% meeting time.  
% 
% *** 

%% Matlab structures (structure arrays) 

% 1. So far, we've looked at vectors and matrices:
matrixVar = [1 2; 3 4; 5 6]; 

% and cell arrays: 
cellVar(1:10) = {'cells!'}; 

% 2. Cell arrays are more flexible than matrices, in that they can have different datatypes:
cellVar{1} = 'change this'; 
cellVar{2} = 1; 

% You can even put a whole vector in a cell: 
cellVar{3} = [1 2 3 4 5]; 

% Or another cell array: 
cellVar{4} = {'a' 'whole' 'cell' 'array'}; 

% Or a mixed cell array, with some strings and some numbers: 
cellVar{5} = {'a string' 16}; 

% Using either the Command window or the Variable window (accessed by double clicking the variable in the
% Workspace), examine this variable cellVar. 

% This kind of mixing only works in cell arrays; you can't do this to an array of numbers defined with [],
% like matrixVar: 
matrixVar(1,2) = 0; % this is fine
matrixVar(2,1) = {'an error!'}; % this is not
matrixVar(1,2) = [0 1 2]; % also not okay

% 3. Structures in Matlab are kind of like super-charged cell arrays, but each different "column" is a
% specific field, with a fieldname. Let's initiate a blank (empty) structure: 
smngLabMembers = struct; 

% 4. We're going to make this structure reflect some of the data about the lab members. Let's start with
% Robin's data! First we'll need her name: 
smngLabMembers.name = 'Robin Karlin'; 

% the . after the structure variable name means that the thing that follows is a fieldname. So we've created a
% field called "name". Let's add what lab she's in: 
smngLabMembers.lab = 'SMAC'; 

% Now let's also include year of PhD graduation. Remember that different fields in structures can take
% different data types, so we can just use a number: 
smngLabMembers.phdYear = 2018; 

% We can also include what years she's been working with SMNG: 
smngLabMembers.smngYears = 2019:2020; % do you remember what kind of data the : here produces?

% Take a look at smngLabMembers, either by typing the variable name in the command window, or by using the
% variable workspace. We basically have an index card with information about Robin! Great! We can access
% specific fields too, e.g. the lab: 
smngLabMembers.lab

% Perhaps assign a variable: 
phdGradDate = smngLabMembers.phdYear; 

%% Indexing in structures

% 1. Okay, so we've got Robin's data in there. Currently, smngLabMembers is a 1x1 structure. We can get
% Robin's name by doing either: 
smngLabMembers.name

% OR 
smngLabMembers(1).name 

% What is that 1 doing there? It's an index! Robin is the first entry, so that index is 1. If you want the
% whole "rolodex" card for her, you can use the index without any fieldnames. 
smngLabMembers(1)

% 2. Right now, that's a little redundant, because there's only one entry. But we can add others---as long as
% we use the index! Otherwise: 
smngLabMembers.name = 'Sarah Bakst'; 

% This doesn't create a new entry, it just changes the first entry's name to Sarah Bakst. Let's change that
% back: 
smngLabMembers(1).name = 'Robin Karlin'; 

% and now actually create a second entry: 
smngLabMembers(2).name = 'Sarah Bakst'; 

% ***
% Homework item 1: Add the information of the other fields to Sarah's entry! Include your commands in your
% Matlab worksheet. 
% 
% - her lab is BLAB
% - her PhD year is 2017
% - she has been working with SMNG in the years 2017 - 2020. 
% ***

% 3. All right, now that we have two entries, we can see what indexing does more clearly: 
smngLabMembers(1).name
smngLabMembers(2).name

% 4. Let's see what happens if we add a fourth entry without adding a third: 
smngLabMembers(4).name = 'Alexa Bushinski'; 

% Take a look at the variable smngLabMembers. It is a 1x4 struct, meaning that there are four entries. So
% what's in the third entry?? Nothing! It is just blank, as are all the other fields in Alexa's entry. We'll
% fix that in the next section. 

% 5. So what if you want to access a specific index of an array inside a field? Like, say you wanted to get
% the first year that someone worked with SMNG. 
smngLabMembers(2).smngYears % this gets the whole array of years. How do we get just the first year? 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% . 
% Right, we can just index this like normal. 
sarahsFirstYear = smngLabMembers(2).smngYears(1); 

% ***
% Homework item 2:
% 
% Okay, so the first year is easy. How would you get the LAST year, without knowing exactly how many years
% each person worked? Write your solution in your Matlab worksheet file. 
% 
% BONUS: there are actually two ways to do this, though one is definitely more succinct. What is the second
% way? (Hint: check out worksheet 3 for inspiration!)
% ***


%% Adding to existing structures

% 1. Okay, now that we have an empty line, we can populate it with some other structure. Let's say we had
% Ben's entry somewhere else, with all the same fieldnames:
benInfo.name = 'Ben Parrell'; 
benInfo.lab = 'SMAC'; 
benInfo.phdYear = 2014; 
benInfo.smngYears = 2017:2020; 

% Let's put this benInfo structure in as the third entry of smngLabMembers:
smngLabMembers(3) = benInfo; 

% 2. Yay, that worked! Now let's load a variable we have saved from before, with Carrie's data: 
load('carrieInfo.mat') % Did you get an error? Check what directory you're in! (this variable is saved in 00_remote_worksheets)

% Okay, let's add her too, as the fifth entry: 
smngLabMembers(5) = carrieInfo; 

% Oh no! We've gotten an error: Subscripted assignment between dissimilar structures. How are they dissimilar?
% Let's check out the fieldnames: 
fieldnames(carrieInfo)

% Oh, this has different fields! So they can't merge. Let's clear that variable. 
clear carrieInfo

% 3. Okay, now say we have a cell variable: 



%% Structure arrays in the lab: the data output (Audapter data)



