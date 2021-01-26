Homework 1
smngLabMembers(2).lab = 'BLAB';
smngLabMembers(2).phdYear = 2017;
smngLabMembers(2).smngYears = 2017:2020;

Homework 2
sarahsLastYear = smngLabMembers(2).smngYears(end);

sarahsLastYear = smngLabMembers(2).smngYears(length(smngLabMembers(2).smngYears)); 

Homework 3
aCellArray = expt.conds;
aDoubleArray = expt.allWords;

Homework 4 
It's stored in a column. each row is another timepoint

formants = data(15).fmts; 
formant2 = formants(:,2); 

formant3 = data(30).fmts(:,3);

Homework 5
newStruct = struct('letters',{'a','b','c'}, 'numbers', {1 2 3}, 'weirdField', {[1 2 3] [4 5 6] [7 8 9]});