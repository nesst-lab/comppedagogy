%HOMEWORK ITEM 1:
for integer = 40:50
end

%HOMEWORK ITEM 2:
for oddNum = 1:2:1000
end

%HOMEWORK ITEM 3:
for trialIx = 1:length(data)
    trialFileName = [num2str(trialIx) '.mat'];
    fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName); 
end

names = {'Pam' 'Kevin' 'Darryl' 'Michael' 'Erin' 'Toby' 'Oscar' 'Jim'... % note this ... when you don't want 
    'Andy' 'Kelly' 'Creed' 'Phyllis' 'Angela' 'Dwight' 'Stanley' 'Ryan' 'Robert' 'Meredith'}; % to continue on a single line

goodEvil = {'good' 'good' 'neutral' 'evil'}; 

officeCharacters = struct('name',names);

%HOMEWORK ITEM 4:
charIx = [1 4 12 18];
moralIx = 1;
for ix = 1:length(names)
    for jx = charIx
        if ix == jx
            officeCharacters(ix).goodEvil = goodEvil(moralIx);
            moralIx = moralIx + 1;
        end
    end
end

%HOMEWORK ITEM 5:
trials2run = 31:60;
for wordNum = 1:length(words4trials)
    trialNum = trials2run(wordNum);
    word = words4trials{wordNum};
    fprintf("The word for trial " + trialNum + " is " + word + "\n")
end

    