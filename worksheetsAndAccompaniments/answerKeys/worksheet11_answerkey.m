%% Worksheet 11 answer key

%% Question 1: 

% *** 
% Homework item 1:
% Write a code snippet that will assign the following sentence with "proper" capitalization to the variable 
% goodSentence 
% 
% sentence = 'sarah and robin are postdocs with the blab and smac labs at uw-madison.'
% ***

sentence = 'sarah and robin are postdocs with the blab and smac labs at uw-madison.'; 

goodSentence = [upper(sentence(1)) sentence(2:10) upper(sentence(11)) sentence(12:38) upper(sentence(39:42))...
    sentence(43:47) upper(sentence(48:51)) sentence(52:60) upper(sentence(61:64)) sentence(65:end)]; 

% Or

goodSentence = sentence; 
capitalIndices = [1 11 39:42 48:51 61:64]; 
for i = capitalIndices
   goodSentence(i) = upper(sentence(i));  
    
end

sprintf(goodSentence)


%% Homework item 2:
% Now write a loop that will assign the same original sentence with "sponge-bob capitalization" to the
% variable bobSentence. (Here, sponge-bob capitalization simply means that every other letter is lower/upper
% case.)
% 
% Note: the function rem(x,y) or mod(x,y) may be helpful here! 
% *** 

for i = 1:length(sentence)
    if rem(i,2) % If odd i---means it'll start lower case
        bobSentence(i) = lower(sentence(i)); 
    else
        bobSentence(i) = upper(sentence(i)); 
    end    
    
end
sprintf(bobSentence)

%% Question 3

% ***
% Homework item 3: 
% What would the result be of a string split that split mySentence over the character 't'? How about the 
% character '_'? % Describe the outputs of this. 
% 
% Next, create two new variables that do these two tasks and compare your predictions to the results. Were you
% correct? If not, do you understand why? 
% ***

% for t: 
splittCell = split(mySentence, 't'); 
splittCell{1} == ''; % The splitting needs to give you the thing before and after, there is nothing 
% before so it is just empty
splittCell{2} == 'he cow jumped over '; % t's are removed
splittCell{3} == 'he moon'; 

% for _: 
split_Cell = split(mySentence, '_'); 
split_Cell{1} = 'the cow jumped over the moon'; % there is no underscore so nothing to split over

%% Question 4

% *** 
% Homework item 4 (review): 
% What would be the result if we used (1) instead of {1} as the lower-level
% index to define compressedItem1?
% *** 

% It would give it to you as a cell rather than a string 
%% Question 5 

% ***
% Homework item 5
% 
% The prose descriptions for each line of code are given in the for loop
% below. Provide the code versions of the descriptions. 
% 
% ***

% A loop to tell you, in natural-sounding English, what the shopping list
% is for each week, with a line break between each week. 
% --- The list should take the form "milk, eggs, and bread", not "milk, 
% eggs, bread". 
% --- The sentence should say "The ingredient/s you need for week X IS/ARE
% LIST. That is, if there is only one ingredient for the week, it should
% use "is" and "ingredient", and if there is more than one, it should use 
% "are" and "ingredients"



lockdownShoppingList{3} = {'chocolate'}; 
for w = 1:length(lockdownShoppingList)
    
    % 1. Determine what form of the verb you will be using 
    nItems = length(lockdownShoppingList{w}); 
    if nItems > 1
        beForm = 'are';
        ingrForm = 'ingredients'; % could also suffix to a base form  "ingredient"
    else
        beForm = 'is'; 
        ingrForm = 'ingredient'; 
    end
    
    % 2. Create the string of ingredients (e.g. "milk, eggs, and bread").
    % Note that you already know how to iteratively create a string, and
    % also you know how to chain multiple strings together. (You should be
    % able to do this in one line of code)
    if nItems > 2 % >1 for the original problem. > 2 for bonus. 
        proseList = [sprintf('%s, ', lockdownShoppingList{w}{1:end-1}), 'and ' lockdownShoppingList{w}{end}]; 
    elseif nItems == 1 % for the bonus
        proseList = lockdownShoppingList{w}{1}; 
    elseif nItems == 2 % for the bonus
        proseList = [lockdownShoppingList{w}{1} ' and ' lockdownShoppingList{w}{2}]; 
        % proseList = sprintf('%s and %s', lockdownShoppingList{w}{1}, lockdownShoppingList{w}{2}); 
    end
    
    % 3. Print the sentence. 
    fprintf(['The ' ingrForm ' you need for week %d ' beForm ' ' proseList '.\n'], w); 
  
    
end

