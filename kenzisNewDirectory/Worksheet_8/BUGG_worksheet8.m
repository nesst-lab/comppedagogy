%#1
for integer = 40:50 
    square = integer^2; 
    fprintf('The square of %d is %d\n',integer,square);     
end

%#2
oddBelow1000 = [1:2:1000];
end
##### 
% RK 10/14: what is the end statement for? 

%#3
for trialIx = 1:length(data)
    trialFileName = [num2str(1) '.mat']; 
    #####
    % RK 10/14: Will this print out varying file numbers or a single one? 
    fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName);
end

%#4
####
% RK 10/14: please include your reasoning (note that this doesn't work)
charIx = [1 4 12 18];
for Ix = 1:length(names)
    charIx = goodEvilAvailable(i) % RK 10/14: where did you define i? 
    officeCharacters(Ix).goodEvil = goodEvil{i}; 
end

%#5
trials2run = 31:60
for wordNumber = 1:length(words4trials)
    trialNumber = trials2run(wordNumber)
    words = words4trials(wordNumber) % RK 10/14: As good coding practice, you should start to suppress output (especially in loops!)
    #####
    % RK 10/14: will this work? (Check your bracketing) 
    fprintf('The word for trial %d is %s\n',trialNumber,words) %)
end