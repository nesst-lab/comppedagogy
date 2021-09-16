%homework 1
for integer = 40:50
square= integer^2;
fprintf('the square of %d is %d\n', integer, square)
end

%homework 2
oddBelow1000= [1:2:1000]


% Homework item 3: 

trialIx=1;
for trialIx=1
    trialFileName = [num2str(1) '.mat'];
    fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName); 
end


%Homework item 4:
goodEvilReal= [1 4 12 18]
for goodEvilReal = 1:length(goodEvil)
   officeCharacters(goodEvilReal).goodEvil = goodEvil{goodEvilReal};  
   
end

% Homework item 5: 
% 
trials2run = 31:60; 
for i = 1:length(words4trials)
    trialNo = trials2run(i); 
    trialWord = words4trials{i}; 
    fprintf('The word for trial %d is %s\n',trialNo,trialWord)
    
end