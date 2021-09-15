%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 8: For loops
% 
% - Skills introduced: 
% --- Intro to for loops
% --- Loop complications 
% ------ "Dislocated" indexing
% ------ Loops within loops
% --- Toy for loop with sample Audapter data 
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_8 in your personal
% directory inside comppedagogy. 
%
% BONUS: you'll need a LASTNAME_worksheet8.m file for this worksheet as well. Create this either via Matlab or
% via the command line. 
% 
% *** 

%% Intro to for loops

% 1. One of the things that programming is really good for is doing repetitive, predictable things that would
% be super boring for you to do yourself. For example, when you want to mark up all the trials of an
% experiment, you only have to run the audioGUI command once, and it will bring up all the trials for you. If
% we didn't have loops, you'd have to run the audioGUI command as many times as there are trials! That would
% be super time-consuming. 

% 2. Let's look at a really basic example of how loops can save time and typing. Say you want to find out what
% the square of the numbers 20 through 30 are. We can do that general operation with two simple commands, one
% math and one print statement:
square = 20^2; 
fprintf('The square of 20 is %d\n',square); % Remember that %d just indicates that a double (number) will go there---specifically, the double in "square"

% If you wanted to be a little more fancy and variable-using, you could define a variable as 20, and then
% square AND display it: 
integer = 20; 
square = integer^2; 
fprintf('The square of %d is %d\n',integer,square); 

% That's all very well and good for one instance of this. But we wanted to see what it was for the numbers 20
% through 30. Without a loop, we basically have to copy and paste this whole thing over and over, making only
% MINOR changes to the code:

integer = 20; 
square = integer^2; 
fprintf('The square of %d is %d\n',integer,square); 

integer = 21; 
square = integer^2; 
fprintf('The square of %d is %d\n',integer,square); 

integer = 22; 
square = integer^2; 
fprintf('The square of %d is %d\n',integer,square); 

integer = 23; 
square = integer^2; 
fprintf('The square of %d is %d\n',integer,square); 

% etc., etc. I'm bored of this. And what happens if tomorrow I want to know what the squares of 40 - 50 are???
% Then I'll have to go back and change 10 variables. This is where loops come in! Specifically, we'll start
% with for loops, which are more intuitive. (The next worksheet has while loops, which are very similar, but
% use a different condition to stop looping.) 

% 3. A for loop basically has three components: 

% the mark of the loop itself (for... end, just like if... end) 
for integer = 20:30 % the definition of the bounds you want to do the operation in 
    square = integer^2; 
    fprintf('The square of %d is %d\n',integer,square); % the operation!     
end

% Look at how similar this looks to our big, written-out chunk of code! We have a definition for integer, a
% definition for square BASED on the value of integer, and then a print statement (in fact, I literally
% copy-pasted the operation lines). But now if you run just these four lines of code, it will give you the
% same result as the 33 lines you would need to do it without a loop. 

% 4. Let's take a look at this line: 
integer = 20:30; 

% If you remember from the indexing worksheet, we can define vectors using a :. So integer is now a vector
% containing 20 21 22 23 24 25 26 27 28 29 30. So those are the numbers that "integer" will be allowed to be
% for the operation. 

% What the for loop does is take each of the vector elements one at a time, and then run the operation using
% that single value as "integer".

% *** 
% Homework item 1: What would we do to the for loop above in order to have it give us the squares of the
% numbers 40 through 50 instead of 20 through 30? Include your solution in your Matlab worksheet. 
% ***

% 5. Side note: sometimes you don't want a vector that is just increasing by 1. For example, maybe you only
% want even numbers. You can still define this with : notation (imagine trying to write out ALL the integers
% between 1 and 1,000!): 
evenBelow1000 = [2:2:1000]; 

% What this syntax does is to give you a vector that starts at 2, increases by 2, and stops at 1000. To make
% it more clear (because there are two 2s in that command): 

countByTens = [0:10:1000]; 

% This vector starts at 0, increases by 10, and stops at 1,000. So this is counting to 1000 by tens. 

% ***
% Homework item 2: How would you define a vector of ODD numbers between 1 and 1000 using this : notation?
% Include your command in your Matlab worksheet. 
% *** 

% 6. So far, we've taken some of the hard-coding out of our loop, but we can still do more! For example:
firstInteger = 40; 
lastInteger = 50; 
for integer = firstInteger:lastInteger
    square = integer^2; 
    fprintf('The square of %d is %d\n',integer,square);   
end

% This seems kind of silly in this context, but what if this for loop were actually buried somewhere on line
% 200 of the code? Or what if multiple loops used the 40:50 vector? Having the bounds defined as variables
% higher up in the code, where they are accessible for editing, makes your life easier. 

% More helpfully, we often do things like "do this for as long as the experiment is". For example, we can run
% audioGUI on all the trials in any experiment no matter how many trials there were in the experiment; the end
% value of the for vector is not hard-coded. Let's load our sample data file again: 
load('sampleBasicData/data.mat'); 

% We can get the number of trials in this "experiment" by getting its length: 
ntrials = length(data); % ntrials---number of trials

% And then we can do a for loop on it: 
for trial = 1:ntrials % alternatively, if you didn't define "ntrials" you could just do 1:length(data)      
    % Duration is the number of samples (length of signalIn) / sampling rate 
    duration = length(data(trial).signalIn) / data(trial).params.sRate; % Note that we can use the value of "trial" as an index!
    fprintf('Trial %d was %d seconds long.\n',trial,duration)    
end

% ***
% Homework item 3: 
% 
% Transform the following code into a for loop that runs over the number of trials in the sample data file: 
trialIx = 1; % trial index
trialFileName = [num2str(1) '.mat']; % putting strings in [] brackets makes a concatenated string! and num2str makes a number into a string.
fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName); 
% ***

%% Loop complications
% this is not an official term, this is just what I have decided to call it! 

% 1. So far we've been working with pretty straightforward loops: we either directly define the vector of 
% possible values we want, and that gets directly fed in as the variable; or if we are using
% length(something), the trial indices are exactly the same as the vector. But what if that's not the case??
% Let's do this first with an array type that doesn't have numbers: cell arrays!

names = {'Pam' 'Kevin' 'Darryl' 'Michael' 'Erin' 'Toby' 'Oscar' 'Jim'... % note this ... when you don't want 
    'Andy' 'Kelly' 'Creed' 'Phyllis' 'Angela' 'Dwight' 'Stanley' 'Ryan' 'Robert' 'Meredith'}; % to continue on a single line

% If we wanted to make a structure array about the Office characters, we could start off with this cell array:
officeCharacters = struct('name',names); 

% Now let's say we also have a chaos array. 
chaosTypes = {'lawful' 'neutral' 'neutral' 'chaotic' 'chaotic' 'lawful' 'lawful' 'neutral'...
    'neutral' 'chaotic' 'chaotic' 'chaotic' 'lawful' 'lawful' 'neutral' 'neutral' 'chaotic' 'chaotic'}; 

% There is a super unintuitive way to add this to the existing structure: 
[officeCharacters.chaosType] = chaosTypes{:}; % Matlab is lawful evil

% But in case you don't get to that solution via experimenting with brackets, we can use a loop to assign the
% chaos values to each character. 
for ix = 1:length(chaosTypes)
    officeCharacters(ix).chaosType = chaosTypes{ix}; 
    
end

% Now consider: we only have the good/evil alignments of a few characters---specifically Pam, Michael, Phyllis,
% and Meredith. 
goodEvil = {'good' 'good' 'neutral' 'evil'}; 

% We can take a shortcut right now and know that the indices of these characters in the array are 1, 4, 12,
% 18. 
charIx = [1 4 12 18]; 

% Now, let's do the loop!
for charIx = [1 4 12 18]
   officeCharacters(charIx).goodEvil = goodEvil(charIx);  
    
end

% This should have produced an error for you. Take a look at the error---what do you think is happening? 
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
% . 
% . 
% Right, so the error is that the index exceeds the number of array elements (4). That's because, on the right
% side of the assignment, we have goodEvil(charIx). Well, charIx is ranging over 1, 4, 12, and 18, but we only
% have 4 known good/evil alignments! Okay, so let's use length(goodEvil) instead, that will make sure we don't
% run into that problem again: 
for charIx = 1:length(goodEvil)
   officeCharacters(charIx).goodEvil = goodEvil(charIx);  
    
end

% All right, so that shouldn't have errored for you. So let's check out Meredith's good/evil alignment (she's
% number 18): 
officeCharacters(18).goodEvil

% Wait, why is it empty?? 
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
% . 
% . 
% Right, it's empty because what we ACTUALLY did was define: 
officeCharacters(1).goodEvil = goodEvil{1}; 
officeCharacters(2).goodEvil = goodEvil{2}; 

% and so on and so forth. What we really want to do is get: 
officeCharacters(1).goodEvil = goodEvil{1}; 
officeCharacters(4).goodEvil = goodEvil{2}; 
officeCharacters(12).goodEvil = goodEvil{3}; 
officeCharacters(18).goodEvil = goodEvil{4}; 

% In other words, we don't want the two indices to be "linked" (we don't want them to be using the same
% variable). How might we do this? 

% ***
% Homework item 4: 
% 
% In your homework worksheet file, write the lines of code that you think will make this work, and include
% your reasoning as comments. It doesn't have to be perfectly right---we just want to see your thought
% process! We'll go over the right answer in a bit.
% *** 

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
% . 
% . 
% . 
% . 

% So one way to do this is to define the set of indices for the characters you have info on: 
goodEvilAvailable = [1 4 12 18]; 

% And then use that variable as the length definition in your for bounds. 
for i = 1:length(goodEvilAvailable) % 1:length(goodEvilAvailable) == 4, so this is just a 1 2 3 4 vector. 
    % Which side uses 1 2 3 4, and which side uses 1 4 12 18? 
    
    % Right, the character index is 1 4 12 18, and the goodevil index is 1 2 3 4. 
    charIx = goodEvilAvailable(i); % so this gives you the first, second, third, and fourth values in goodEvilAvailable
    officeCharacters(charIx).goodEvil = goodEvil{i};     
    
end

% This is what I'm calling "dislocated" indexing: the two indices are not identical 

% (We actually want to delete the 2 and 3 assignments we also made, because they're wrong, so you can do: 
officeCharacters(2).goodEvil = []; 
officeCharacters(3).goodEvil = []; %)

% *** 
% Homework item 5: 
% 
% "Dislocated" indexing comes up a lot in our experiment running scripts. For example, we may have a vector
% called trials2run: 
% 
% trials2run = 31:60; 
% 
% Now we want to run some loop over all these trials. We also have a list of 30 items, the words that will be
% used, in the right order: 

load('words4trials.mat');

% Using one for loop, issue a print statement for each trial that says: 
% The word for trial TRIALNUMBER is WORD
% *** 

