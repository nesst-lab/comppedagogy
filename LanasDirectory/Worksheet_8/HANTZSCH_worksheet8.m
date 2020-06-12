%% HW 1.
for integer = 40:50
    square = integer^2; 
    fprintf('The square of %d is %d\n',integer,square);
end
    
%% HW 2. 
oddNumbers = [1:2:1000]

%% HW 3. 
% Transform the following code into a for loop that runs over the number of trials in the sample data file: 
trialIx = 1; % trial index
trialFileName = [num2str(1) '.mat']; % putting strings in [] brackets makes a concatenated string! and num2str makes a number into a string.
fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName); 

%answer
ntrials = length(data)
for trialIx = 1:ntrials
    trialFileName = [num2str(trialIx) '.mat'];
    fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName);
end

%% HW 4.
charIx = [1 4 12 18]
for ind = 1:length(goodEvil)
   officeCharacters(charIx(ind)).goodEvil = goodEvil(ind);  
    
end

%it was necessary to have the index of charIx and goodEvil match up,
%because the index of charIx will properly assign which Office character
%number the goodEvil assignment should be added to

%% HW 5. 
trials2run = 31:60; 
load('words4trials.mat');
%Using one for loop, issue a print statement for each trial that says: 
% The word for trial TRIALNUMBER is WORD

for i = 1:length(trials2run)
    trial = trials2run(i);
    word = words4trials{i};
    fprintf('The word for trial %d is %s\n',trial,word)
end
