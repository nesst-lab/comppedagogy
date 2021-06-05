smngLabMembers = struct;
smngLabMembers.name = 'Robin Karlin';
smngLabMembers.lab = 'SMAC';
smngLabMembers.phdYear = 2018;
smngLabMembers.smngYears = 2019:2020;
smngLabMembers(2).lab = 'BLAB'; %homework item 1
smngLabMembers(2).name=' Sarah Bakst';
smngLabMembers(2).phdYear = 2017;
smngLabMembers(2).smngYears = 2017:2020;
sarahsLastYear = smngLabMembers(2).smngYears(end); %homework item 2
aCellArray = expt.conds; %homework item 3
aDoubleArray = expt.allWords;
formant2 = formants(15,2);%homework item 4 there are only 4 columns so the trials must be in rows hence 15,2 except there are only 10 array elements so there isn't really a trial 15
formant3 = formants(30,3);%you would need to make the arry bigger to hold more trials
newStruct = struct('letters',{'a','b','c'}, 'numbers', {1 2 3}, 'weirdField', {[1 2 3] [4 5 6] [7 8 9]}); %homework item 5

