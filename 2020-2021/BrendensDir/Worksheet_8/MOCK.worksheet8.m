%Homework Item 1:
for integer = 40:50
square = integer^2; 
fprintf('The square of %d is %d\n', integer, square);
end

%Homework Item 2:
oddBelow1000 = [1;2;1000];

%Homework Item 3:
for trialIx = 1:length(data)
trialFileName = [num2str(trialIx) '.mat'];
fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName);
end

%Homework Item 4:
%I had to read through the following portion of the worksheet multiple
%times to fully understand but here it is!
for i = 1:length(goodEvilAvailable)

charIx = goodEvilAvailable(i);
officeCharacters(charIx).goodEvil = goodEvil{i}; 
end

%Homework Item 5:
trials2run = 31:60; 
for i = 1:length(words4trials)
trialNo = trials2run(i); 
trialWord = words4trials{i}; 
fprintf('The word for trial %d is %s\n',trialNo,trialWord)
    
end

