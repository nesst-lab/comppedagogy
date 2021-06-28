%% Homework Item #1:
sentence = 'sarah and robin are postdocs with the blab and smac labs at uw-madison.';
Sarah = [upper(sentence(1)) sentence(2:10)];
Robin = [upper(sentence(11)) sentence(12:(strfind(sentence, 'blab') - 1))];
BLAB = [upper(sentence(strfind(sentence, 'blab'):(strfind(sentence, 'blab')+3))) sentence((strfind(sentence, 'blab')+4):(strfind(sentence, 'smac') -1))];
SMAC = [upper(sentence(strfind(sentence, 'smac'):(strfind(sentence, 'smac')+3))) sentence((strfind(sentence, 'smac')+4):(strfind(sentence, 'uw-m')-1))];
UW = [upper(sentence(strfind(sentence, 'uw-m'):(strfind(sentence, 'uw-m')+3))) sentence((strfind(sentence, 'uw-m') + 4):end)];
goodSentence = [Sarah Robin BLAB SMAC UW]

%% Homework Item 2:
sentence = 'sarah and robin are postdocs with the blab and smac labs at uw-madison.';
goodSentence = sentence;
for ix = 1:(length(sentence)-1)
    if ix == 1
        goodSentence = [upper(goodSentence(ix)) goodSentence((ix+1):end)];
    elseif rem(ix, 2) ~= 0
        goodSentence = [goodSentence(1:(ix-1)) upper(goodSentence(ix)) goodSentence((ix+1):end)];
    end
end
goodSentence

%% Homework Item 3:
% when splitting by t, i think the cells woud have: 
%{'he cow jumped over'} {'he moon'}
% when splitting by '_', I think their would be one cell that
% contains the entire sentence.

splitbyt = strsplit(mySentence, 't')
% for this one, there was an empty character cell at the 
% beginning, which I didn't expect. I think this occured
% because the first character in the string was a 't'

splitby_ = strsplit(mySentence, '_')
% my guess was right.  The result was a 1x1 cell array that 
% containied the entire sentence.

%% Homework Item 4:
%if we used the () instead of the {} when indexing, the result
% would be a 1x1 cell array containing the grocery item, Instead
% of the actual string of the grocery item.

%% Homework Item 5:

for l = 1:length(lockdownShoppingList)
    lists = lockdownShoppingList{l};
    if numel(lists) > 1 %numel is a function that returns the size of the array, for more use: help numel
        ingre = 'ingredients';
        prop = 'are';
        if numel(lists) == 2
          fullList = join(lists, ' and ');
          fullList = fullList{1};
        else
            %lists = lockdownShoppingList{l};
            almostList = lists(1:end-1);
            listMinusEnd = join(almostList, ', ');
            fullList = [listMinusEnd{1} ', and ' lists{end}];
        end
    else
        ingre = 'ingredient';
        prop = 'is';
        fullList = lockdownShoppingList{l}{1};
    end
    sprintf('The %s you need for week %d %s %s.\n\n', ingre, l, prop, fullList)
end