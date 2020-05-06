hw 1

smngLabMembers(2).lab = 'BLAB'
smngLabMembers(2).phdYear = 2017
smngLabMembers(2).smngYears = 2017:2020


hw 2
sarahsLastYear= smngLabMembers(2).smngYears(end)

BONUS: sarahsLastYear= smngLabMembers(2).smngYears(length(smngLabMembers(2).smngYears))

hw 3
Asks for cell array, eg conds, vowels
Asks for double array, eg allWords or durHold
I think there's a typo--corrected now

myconds = expt.conds;
mydurs = expt.durHold;

hw 4
audapter saves formants in columns: each row is another timepoint/frame.
formants = data(:).fmts
formant2=formants(:,2)
Technically though, only the last trial gets saved. You'd need to vertcat all of the answers together, I think.


data(30).fmts(:,3)

hw 5

5. newStruct = struct('letters',{'a','b','c'}, 'numbers', [1 2 3]) % and then something else
