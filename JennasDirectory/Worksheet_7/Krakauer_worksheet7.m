1. smngLabMembers = struct;
   smngLabMembers(2).name = 'Sarah Bakst';
   smngLabMembers(2).lab = 'BLAB';
   smngLabMembers(2).phdYear = 2017;
   smngLabMembers(2).smngYears = 2017:2020;

2. sarahsLastYear = smngLabMembers(2).smngYears(end);
   Bonus: sarahsLastYear = length(smngLabMembers(2).smngYears); %this would give you 4, which you can plug in
          sarahsLastYear = smngLabMembers(2).smngYears(4);

3. cellArray = expt.conds;
   doubleArray = expt.allConds;

4. Individual formants are stored in each column because there are four columns, therefore four formants, with multiple data points in each row.
formant2 = formants(:,2);
formant3 = data(30).fmts(:,3)

5. newStruct = struct('letters',{'a','b','c'}, 'numbers', [1 2 3], 'gradesStruct', struct('letterGrades', {'A','B','C','D','F'}, 'gpa', [4 3 2 1 0]));
