% Homework item 1
for integer = 40:50
    square = integer^2
    fprintf('The square of %d is %d\n',integer,square);
end

% Homework item 2
oddBelow1000 = [1:2:1000]

% Homework item 3
 for trialIx= 1
    trialFileName = [num2str(1) '.mat'];
    fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName)
 end
 
% Homework item 4
for charIx = 1:length(goodEvil)
officeCharacters(charIx).goodEvil = goodEvil(charIx);
end
    % I know the above code is wrong, but I think that charIx still has to
    % be set to [1 4 12 18]. You would somehow have to specify the length
    % in the second line of code, or add another line to the line of code,
    % or add another variable. 
    
% Homework item 5 **confusing**
trials2run = 31:60; 
for i = 1:length(words4trials)
    trialNo = trials2run(i); 
    trialWord = words4trials{i}; 
    fprintf('The word for trial %d is %s\n',trialNo,trialWord)
    
end