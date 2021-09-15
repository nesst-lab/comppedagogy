% Homework #1: add the information of the other fields to Sarah's entry 
% - her lab is BLAb
smngLabMembers(2).lab = 'BLAB';
% - her PhD year is 2017
smngLabMembers(2).phdYear = '2017';
% - she has been working in SMNG in the years 2017 - 2020
smngLabMembers(2).smngYears = 2017:2020;

% Homework #2: How would you get the last year without knowing exactly how
% many years each person worked? 
smnglabmembersLastYear = smngLabMembers(1:4).smngYears;

% Homework #3: 
cellarray = expt.conds;
doublearray = expt.allConds;

% Homework #4: 
% I think that individual formants are stored in the rows and not the
% colums because if you look at variable rows there are 984 and if you look
% at the variable cols there are only 4, it makes sense that the rows woul
% be holding the individual formants. The 4 likely indicates the 4 formant
% measures, not the formants themselves. 
[15,2] = formant2;
% I believe that this code assigns formant2 using the 2nd measure on the
% 15th trial because [15,2] indicates the formant matrix where 15 is the
% row, or individual formant, and 2 is the colum, or 1 of 4 formant
% measures. 
[30,3] = formant3;


% Homework #5: 
kathleen = struct;
kathleen.letters = 'letters';
kathleen(1).letters = 'a';
kathleen(2).letters = 'b';
kathleen(3).letters = 'c';
kathleen.numbers = 'numbers';
kathleen(1).numbers = '1';
kathleen(2).numbers = '2';
kathleen(3).numbers = '3';
kathleen.years = 'yearsatUW';
kathleen.years = {'2017' '2018' '2019' '2020' '2021'};

