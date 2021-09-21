smngLabMembers = struct;
smngLabMembers.name = 'Robin Karlin';
smngLabMembers.lab = 'SMAC';
smngLabMembers.phdYear = 2018; 
smngLabMembers.smngYears = 2019:2020;
%HOMEWORK ITEM 1:
smngLabMembers(2).name = 'Sarah Bakst'; 
smngLabMembers(2).lab = 'BLAB';
smngLabMembers(2).phdYear = 2017;
smngLabMembers(2).smngYears = 2017:2020;
smngLabMembers(4).name = 'Alexa Bushinski';
% HOMEWORK ITEM 2:
sarahsLastYear = smngLabMembers(2).smngYears(end);
sarahsLastYear = smngLabMembers(2).smngYears(length(smngLabMembers(2).smngYears));
benInfo.name = 'Ben Parrell'; 
benInfo.lab = 'SMAC'; 
benInfo.phdYear = 2014; 
benInfo.smngYears = 2017:2020; 
smngLabMembers(3) = benInfo;
%smngLabMembers(5) = carrieInfo;
%fieldnames(carrieInfo)
%clear carrieInfo;
fieldnames(expt)
expt.name
expt.snum
expt.dataPath
%HOMEWORK ITEM 3:
cellArray = expt.conds;
doubleArray = expt.allConds;
spoken = data(1).signalIn;
nSamples = length(spoken);
spoken(401:415)
%plot(1:nSamples,spoken)
formants = data(6).fmts;
[rows,cols] = size(formants);
%HOMEWORK ITEM 4:
formant2 = formants(:,2);
 % individual formants are stored in each column, with each row being a
 % data point of that formant, and each column being one of four formants
 % recorded/analyzed
 % formant3 = data(30).fmts(:,3) there are only 10 trials in data, cannot
 % do 30th 
 rpkParams = [data.params];
 [data.params];
 %HOMEWORK ITEM 5:
 myStruct = struct('letters', {'a','b','c'}, 'numbers', [1,2,3], 'playerStruct', struct('names', {'Jack','Jill','Davey','John','Alex'}, 'playerScores', [[7,4,11,7,14];[4,3,15,12,11];[0,6,12,8,11]]));
