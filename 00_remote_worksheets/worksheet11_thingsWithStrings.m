%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 11: things with strings
% 
% - Skills introduced: 
% --- Case changing
% --- String splitting, joining, and excessively complicated sprintf
% --- Using string variables to make fields
% 
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_10 in your personal
% directory inside comppedagogy. 
%
% You'll need a LASTNAME_worksheet11.m file for this worksheet as well. Create this either via Matlab or
% via the command line. 
% 
% *** 

%% Changing case

% 1. Sometimes you have a word in a certain case---lower case, upper case, etc., and you want to change it to
% a different one.  
trialWord = 'gapper'; 

% Say you want to display trialWord in all caps on the screen. We can change this using the function upper(): 
fprintf('The word is %s\n',upper(trialWord))

% You can also go the other direction:
emphaticWord = 'CAPPER'; 
fprintf('He said %s quietly\n', lower(emphaticWord))

% 2. Recall that you can concatenate strings together to make a longer string by using []: 
aPhrase = [trialWord ' and ' emphaticWord]; 
fprintf('The phrase is %s\n',aPhrase)

% Also recall that you can get the nth letter of a particular string by indexing: 
secondLetter = trialWord(2); 

% What this means is that you can change the case of a single letter. For example, if you wanted to capitalize
% this name: 
name = 'sarah'; 

% Which number character do you want to be capitalized? 
upper(name(1))

% And you can attach that to the rest of the word: 
capitalizedName = [upper(name(1)) name(2:end)]; % remember the "end" keyword for indexing! 

% Or you could simply change the first character of the variable "name" to be capitalized: 
name(1) = upper(name(1)); 

% *** 
% Homework item 1:
% Write a code snippet that will assign the following sentence with "proper" capitalization to the variable 
% goodSentence 
% 
% sentence = 'sarah and robin are postdocs with the blab and smac labs at uw-madison.'
% ***

% ***
% Homework item 2:
% Now write another code snippet that will assign the same sentence with "sponge-bob capitalization" to the
% variable bobSentence. (Here, sponge-bob capitalization simply means that every other letter is lower/upper
% case. You can treat spaces like a character.)
% 
% Note: the function rem(x,y) or mod(x,y) may be helpful here! 
% *** 

% 3. Sometimes you have a number that you want to turn into a string, e.g.:
trial = 15; 

% If you want to concatenate this into, for example, a title for a plot,
% you would have to first convert it into a string. Matlab has a function
% for this: 
num2str(trial)

% Let's try concatenating into a string with both variables: 
badString = ['trial ' trial]; 
goodString = ['trial ' num2str(trial)]; 

% Note that badString still WORKED, it just didn't give you the result it
% wants. Remember that characters all have numbers assigned to them, as per
% ASCII. 15 happens to be "shift in" which produces an empty rectangle in
% badString. You could try with another trial number: 

trial2 = 100; 
trial2Concat = ['trial ' trial2]; 

% 100 is the ASCII number for the letter 'd' so trial2Concat == 'trial d'
 

%% String splitting

% 1. Sometimes you may have a longer string that has a certain character in between every word or important
% bit of information. For example, if you wanted to split a sentence into its individual words, each word is
% separated from the next by a space: 

mySentence = 'the cow jumped over the moon'; 

% The function strsplit() takes the string you want to split, and the character you want to split it by: 
sentenceParts = strsplit(mySentence,' '); 

% In this case, the single quotes enclose a space. The result of this is a cell array, where the first cell
% has the first word, the second cell has hte second word, etc. Note that the spaces are NOT there, so
% basically the split character is "deleted".

% ***
% Homework item 3: 
% What would the result be of a string split that split mySentence over the character 't'? How about the 
% character '_'? % Describe the outputs of this. 
% 
% Next, create two new variables that do these two tasks and compare your predictions to the results. Were you
% correct? If not, do you understand why? 
% ***

% 2. Once you have your individual split parts in a cell array, you can refer to them just like a normal cell
% array. For example,

secondWord = sentenceParts{2}; 

% 3. And you can loop over the contents of this array, like any other array

for w = 1:length(sentenceParts)
    word = sentenceParts{w}; 
    
    % And then loop over the number of characters in each word, for example
    for c = 1:length(word)
       if rem(c,2)
           word(c) = lower(word(c)); 
       else
           word(c) = upper(word(c)); 
       end        
    end
    
    % Put the bob-cased word back into sentenceParts
    sentenceParts{w} = word; 
end
bobCow = join(sentenceParts,' '); 
fprintf([bobCow{1} '\n']) % Remember that join() creates a cell, not a character array


% 4. You've already concatenated using [] notation, but you can concatenate
% in another way, which is basically like string splitting in reverse. Say
% you have a list of items to buy: 
shoppingList = {'apples' 'bananas' 'pears'}; 

% If you wanted to print out "apples, bananas, pears", you COULD do: 
joinedList = [shoppingList{1} ', ' shoppingList{2} ', ' shoppingList{3}]; 

% But what if your list were 20 items long? You wouldn't want to write that
% all out. Instead, you can use join(): 
joinedList = join(shoppingList, ', '); 

% The output is different (cell instead of character) but the basic end
% result is the same.  

% 5. Okay, now you've gotten a nice joined list, but it's bothering you
% because it's not really natural-sounding: if you were actually telling
% someone what they needed to buy, you would say "you should buy apples,
% bananas, and pears" instead of just "you should buy apples, bananas,
% pears".  Again, this is easy to do with basic [] concatenation when your
% list is short, but what if you have a long list? 

lockdownShoppingList{1} = {'oranges' 'greens' 'beets' 'farro' 'mint' 'barley'...
    'milk' 'eggs' 'yogurt' 'broccoli'}; 

% (note here the ... notation, which allows you to split up long lines of
% code!) 

% Or worse yet, what if you have lists of different lengths?
lockdownShoppingList{2} = {'bell peppers' 'squash' 'candy'}; 

% There are a couple of different ways to address this. The first thing to
% realize, however, is that to get at the individual items on the list, you
% need to double index. You can think about this as combining the two
% commands: 
week2List = lockdownShoppingList{2}; 
item1Week2 = week2List{1}; 
compressedItem1 = lockdownShoppingList{2}{1}; 

% So the "big index" goes first (the one that gets the right cell of the
% top-level cell array) and then the "small index" (the one that retrieves
% the particular item). 

% *** 
% Homework item (review): 
% What would be the result if we used (1) instead of {1} as the lower-level
% index to define compressedItem1?
% *** 

% We've been using fprintf a lot for really basic stuff, but it turns out
% you can use it in combination with sprintf to do more interesting/helpful
% things. 

% sprintf: creates a string in the workspace (STRING print-formatted)
% fpritf: prints to a file or to the command window (FILE print-formatted) 

for w = 1:length(lockdownShoppingList)
    week = 
    
    
end


[sprintf('%s, ', lockdownShoppingList{1}{1:end-1}), ' and ' lockdownShoppingList{1}{end}]


