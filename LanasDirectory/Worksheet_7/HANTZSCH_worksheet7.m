%% HW 1.

smngLabMembers(2).lab = 'BLAB';
smngLabMembers(2).phdYear = 2017;
smngLabMembers(2).smngYears = 2017:2020;

%% HW 2.

sarahsLastYear = smngLabMembers(2).smngYears(end);
%or
sarahsLastYear = smngLabMembers(2).smngYears(length(smngLabMembers(2).smngYears))

%% HW 3. 
conditions = expt.conds
allConditions = expt.allConds

%% HW 4. 
formant2 = formants(:, 2); %there are four columns, so there must be one column for each formant - I just used indexing to assign the second column 

formant3 = formants(30, 3)

%% HW 5.

myStruc = struct('letters',{'a','b','c'}, 'numbers', {1, 2, 3}, 'vectors', {[1:3], [2:4], [3:5]})