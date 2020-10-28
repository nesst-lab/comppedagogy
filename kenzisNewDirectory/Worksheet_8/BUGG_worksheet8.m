%#1
for integer = 40:50 
    square = integer^2; 
    fprintf('The square of %d is %d\n',integer,square);     
end

%#2
oddBelow1000 = [1:2:1000];
##### 
% RK 10/14: what is the end statement for? 
% MB 10/28: truly, I don't know why I did that.

%#3
for trialIx = 1:length(data)
    trialFileName = [num2str(1) '.mat']; 
    #####
    % RK 10/14: Will this print out varying file numbers or a single one? 
    fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName);
end
%MB 10/28: Varying file numbers in one string?

%#4
####
% RK 10/14: please include your reasoning (note that this doesn't work)
% MB 10/28:
charIx = [1 4 12 18]; %Set the charIx to the characters we are looking for specifically
i = 1;
for CharIx = 1:length(names)% This ensures that we are looking at the entire index
    charIx = goodEvilAvailable(i) % RK 10/14: where did you define i? MB: I did not I am realizing now. Now, charIx is comparing the characters we are looking for to the goodEvilAvailable
    officeCharacters(charIx).goodEvil = goodEvil{i}; %This will give you the good, neutral, or evil status for the 4 characters we are looking for. 
end

%#5
trials2run = 31:60
for wordNumber = 1:length(words4trials)
    trialNumber = trials2run(wordNumber)
    words = words4trials{wordNumber} % RK 10/14: As good coding practice, you should start to suppress output (especially in loops!)
    #####
    % RK 10/14: will this work? (Check your bracketing) 
% MB 10/28: Fixed it I think!
    fprintf('The word for trial %d is %s\n',trialNumber,words) %)
end