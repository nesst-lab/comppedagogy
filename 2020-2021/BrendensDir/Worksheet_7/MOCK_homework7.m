%Homework Item 1:
smngLabMembers(2).lab = 'BLAB';
smngLabMembers(2).phdYear = 2017;
smngLabMembers(2).smngYears = 2017:2020;

%Homework Item 2:
smngLabMembers(2).smngYears(end);
sarahsLastYear = smngLabMembers(2).smngYears(length(smngLabMembers(2).smngYears)); %Had to use answer key for this one!

%Homework Item 3:
aCellArray = expt.colors
aDoubleArray = expt.allwords

%Homework Item 4:
formants = data(15).fmts;
formant2 = formants(:,2);
formant3 = data(30).fmts(:,3);

%Homework Item 5:
newStruct = struct('letters',{'a', 'b', 'c'}, 'numbers',{1 2 3}, 'anotherField',{11 111 1111});

