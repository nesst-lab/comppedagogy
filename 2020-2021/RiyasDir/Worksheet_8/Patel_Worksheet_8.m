Homework 1
for integer = 40:50 % the definition of the bounds you want to do the operation in 
    square = integer^2; 
    fprintf('The square of %d is %d\n',integer,square); % the operation!     
end
 
Homework 2
1:2:1000
 
Homework 3
for trialIx = 1:length(data)
   trialFileName = [num2str(trialIx) '.mat'];
   fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName); 
    
end
 
Homework 4
for i = 1:length(goodEvilAvailable)
    
    charIx = goodEvilAvailable(i); 
    officeCharacters(charIx).goodEvil = goodEvil{i}; 
    
end
 
Homework 5
trials2run = 31:60; 
for i = 1:length(words4trials)
    trialNo = trials2run(i); 
    trialWord = words4trials{i}; 
    fprintf('The word for trial %d is %s\n',trialNo,trialWord)
    
end

