%% Homework 7 answer key

%% Homework item 1
% Add the information of the other fields to Sarah's entry! Include your commands in your
% Matlab worksheet. 
% 
% - her lab is BLAB
% - her PhD year is 2017
% - she has been working with SMNG in the years 2017 - 2020. 
% ***

smngLabMembers(2).lab = 'BLAB';
smngLabMembers(2).phdYear = 2017;
smngLabMembers(2).smngYears = 2017:2020;

%% Homework item 2:
% 
% Okay, so the first year is easy. How would you get the LAST year, without knowing exactly how many years
% each person worked? Write your solution in your Matlab worksheet file. 
% 
% BONUS: there are actually two ways to do this, though one is definitely more succinct. What is the second
% way? (Hint: check out worksheet 3 for inspiration!)
% ***

sarahsLastYear = smngLabMembers(2).smngYears(end);

% BONUS: 
sarahsLastYear = smngLabMembers(2).smngYears(length(smngLabMembers(2).smngYears)); 

%% Homework item 3:
% 
% In the expt, find one field that is a cell array, and one that is a double array. Define a variable as the
% cell array and another as the cell array. Include the code for this in your Matlab worksheet file. 
% 
% ***
aCellArray = expt.conds; % vowels, etc.
aDoubleArray = expt.allWords; % durHold, allColors, etc. 

%% Homework item 4: 
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

% audapter saves formants in columns: each row is another timepoint/frame. There are four columns and lots and
% lots of rows and we know that four is a more likely number for formants

% data is only 10 trials long, so data(15) doesn't exist. But you can add additional rows by defining a single field in any
% new row (everything else undefined will be empty). 

formants = data(15).fmts; 
formant2 = formants(:,2); 

formant3 = data(30).fmts(:,3); 

%% Homework item 5: 
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

newStruct = struct('letters',{'a','b','c'}, 'numbers', {1 2 3}, 'weirdField', {[1 2 3] [4 5 6] [7 8 9]}); % and then something else
