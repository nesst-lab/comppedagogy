% Worksheet 8 answer key

%% *** 
% Homework item 1: What would we do to the for loop above in order to have it give us the squares of the
% numbers 40 through 50 instead of 20 through 30? Include your solution in your Matlab worksheet. 
% ***

for integer = 40:50 % the definition of the bounds you want to do the operation in 
    square = integer^2; 
    fprintf('The square of %d is %d\n',integer,square); % the operation!     
end

%%
% ***
% Homework item 2: How would you define a vector of ODD numbers between 1 and 1000 using this : notation?
% Include your command in your Matlab worksheet. 
% *** 

1:2:1000

%%
% ***
% Homework item 3: 
% 
% Transform the following code into a for loop that runs over the number of trials in the sample data file: 
trialIx = 1; % trial index
trialFileName = [num2str(1) '.mat']; % putting strings in [] brackets makes a concatenated string! and num2str makes a number into a string.
fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName); 
% ***

for trialIx = 1:length(data)
   trialFileName = [num2str(trialIx) '.mat']; 
   fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName); 
    
end

%%

% ***
% Homework item 4: 
% 
% In your homework worksheet file, write the lines of code that you think will make this work, and include
% your reasoning as comments. It doesn't have to be perfectly right---we just want to see your thought
% process! We'll go over the right answer in a bit.
% *** 
goodEvilAvailable = [1 4 12 18]; 
for charIx = goodEvilAvailable
    
    officeCharacters(charIx).goodEvil = goodEvil{i};   
    
end

% or 

for i = 1:length(goodEvilAvailable)
    
    charIx = goodEvilAvailable(i); % so this gives you the first, second, third, and fourth values in goodEvilAvailable
    officeCharacters(charIx).goodEvil = goodEvil{i};   
    
end

%%

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

trials2run = 31:60; 
for i = 1:length(words4trials)
    trialNo = trials2run(i); 
    trialWord = words4trials{i}; 
    fprintf('The word for trial %d is %s\n',trialNo,trialWord)
    
end
