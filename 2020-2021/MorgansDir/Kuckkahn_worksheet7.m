%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 7: Matlab structures
% 
% - Skills introduced: 
% --- Matlab structures
% --- Indexing in Matlab structures
% --- Structures in the lab: expt and data 
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

% Now our structure is a structure ARRAY: an array of structures. 

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

% Oh, this has different fields! That's why they can't merge---you can only merge structures together that
% have the same fields. So let's clear that variable. 
clear carrieInfo


%% Structure arrays in the lab: data and expt

% 1. We use structure arrays all the time in our experiments! And you've definitely worked with some before.
% Let's first take a look at a simple structure, expt. There's a directory with sample data in
% sampleBasicData. Load in the expt (use GUI or command!)

% Okay, now let's examine this. You can get the fieldnames:
fieldnames(expt)

% Whoa, that's a lot! Let's just take a look at a few. For example, we can tell what experiment this expt came
% from:
expt.name 

% What the participant code is:
expt.snum % that's "speaker number" 

% And the path of the directory where data was stored while the experiment was running:
expt.dataPath

% ***
% Homework item 3:
% 
% In the expt, find one field that is a cell array, and one that is a double array. Define a variable as the
% cell array and another as the cell array. Include the code for this in your Matlab worksheet file. 
% 
% ***

% 2. All right, now let's look at a more complicated structure array---one that is more than a 1x1. Load in
% data.mat, also in sampleBasicData. 

% The loading time may have been longer for this than for expt! This is because there is a LOT more data: it
% has 10 "entries", and each entry has a ton of data. In these data structure, an "entry" is a single trial.
% So let's look first at trial 1:
spoken = data(1).signalIn; % note the index
nSamples = length(spoken); % the number of times the spoken signal was sampled during the trial

% You might remember that signalIn is the data from what people SAY in experiments. Let's just look at a
% random 15 datapoints in this vector "spoken" 
spoken(401:415)

% It's just a list of numbers! This is just what the pressure was at the mic at whenever that sample was
% taken. It doesn't really look that familiar until we plot it against time (we'll talk more about plotting in
% a future worksheet, don't worry!): 
plot(1:nSamples,spoken) % plot(xValues,yValues)---here x is just time, i.e. samples from 1 to nSamples

% Well that looks a lot more familiar! You've definitely seen that in audioGUI. 

% 3. There's a lot of other stuff stored in data, mostly other vectors. But we can even see some matrices:
formants = data(6).fmts; % what trial are we looking at? 

% Let's take the size of this matrix:
[rows,cols] = size(formants); 

% ***
% Homework item 4: 
% 
% Audapter automatically spits out four formant measures. Are individual formants stored in a column, or in a
% row? Why do you think this? Write a line of code that would define the variable "formant2" as the second formant
% of a hypothetical 15th trial, using the matrix "formants", and a comment explaining your reasoning. 
% 
% In addition, write a single line of code that would define the variable "formant3" as the third formant of a
% hypothetical 30th trial. Include both of your code solutions in your Matlab worksheet solution file. 
% 
% (You won't be able to run and test your solutions without altering data. Why not? How would you alter data to make this
% work?)
% ***

% 4. Let's take a look at the field "params". We can assign ALL 10 "params" values to a single variable by
% telling Matlab that we want the array:
rpkParams = [data.params]; 

% The brackets around data.params signifies that you want the whole output of data.params. Run the following
% command:
data.params

% This should have spit out an annoying line of answers at you! Basically this just loops through all 10
% entries and tells you what the "params" field is. We don't want that! Now try this:
[data.params] % what we assigned to rpkParams

% Now "ans" should be a single, 1x10 struct, the same as rpkParams. But what's this?? How is this a structure
% array? Didn't we extract this from a structure array??

% Yes! Let's look just at trial 9's params: 
singleParams = data(9).params; 

% The params field is actually a structure within a structure! Now, there's a field called "rmsThr" in the
% params structure. How would you access this directly? 
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
% Right, we can just stack the fieldnames:
data(9).params.rmsThr

% There is also a field called pertF2, which is a vector. How would we get the 100th value out of this? 
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
% Yes, we can both stack fieldnames and add an index: 
data(9).params.pertF2(100)

%%

% *** 
% Homework item 5: 
% There is actually another way of creating structures, which involves taking separate cell
% arrays/vectors/etc. and putting them together into a structure array. 
% 
% We've already looked at some Matlab documentation, and if you took up the bonus problem at the beginning of
% this worksheet, you have also ventured into the very wide world of googling things in code! We're going to
% practice using documentation for learning to code again here. So do the following command: 
% 
% doc struct
% 
% Using the information you find there, create a structure that is: 
% - at least 3 entries long; 
% - has a field called "letters", where structure(1).letters == 'a', structure(2).letters == 'b', and
% structure(3).letters == 'c'; 
% - has a field called "numbers", where structure(1).numbers == 1, structure(2).numbers == 2, and
% structure(3).numbers == 3; 
% - has at least one other field that either contains numeric vectors (bonus if there are different vectors in
% each entry) OR contains another structure with at least one field
% 
% Put all the code lines you used to make this structure in your Matlab Worksheet 7 file---don't save the
% structure itself. 
% 
% *** 



