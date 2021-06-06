for integer = 40:50 
square = integer^2
fprintf('The square of %d is %d\n', integer, square)
end% homework item 1 you would just change 20:30 to 40:50
oddNumbers = [1:2:1000];%homework item 2
for trialIx =1:length(data);
    trialFileName = [num2str(trialIx) '.mat'];
fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName); 
end %homework item 3
trials2run = 31:60
for i = 1:length(words4trials)
    trialNo = trials2run(i);
    trialWord = words4trials{i};
    fprintf('The word for trial %d is %s\n', trialNo,trialWord);
end

    