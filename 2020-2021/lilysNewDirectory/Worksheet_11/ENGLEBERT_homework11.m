% *** 
% Homework item 1:
% Write a code snippet that will assign the following sentence with "proper" capitalization to the variable 
% goodSentence 
% 
% sentence = 'sarah and robin are postdocs with the blab and smac labs at uw-madison.'

goodSentence = [upper(sentence(1)) sentence(2:10) upper(sentence(11)) sentence(12:38) upper(sentence(39:42))...
    sentence(43:47) upper(sentence(48:51)) sentence(52:60) upper(sentence(61:64)) sentence(65:end)];


% Homework item 2:
% Now write another code snippet that will assign the same sentence with "sponge-bob capitalization" to the
% variable bobSentence. (Here, sponge-bob capitalization simply means that every other letter is lower/upper
% case. You can treat spaces like a character.)
% 
% Note: the function rem(x,y) or mod(x,y) may be helpful here! 

for i=1:length(sentence)
    if rem(i,2)
        bobSentence(i)=lower(sentence(i));
    else
        bobSentence(i)=upper(sentence(i));
        
    end
end
sprintf(bobSentence)

% Homework item 3: 
% What would the result be of a string split that split mySentence over the character 't'? How about the 
% character '_'? % Describe the outputs of this. 
% 
% Next, create two new variables that do these two tasks and compare your predictions to the results. Were you
% correct? If not, do you understand why? 

    %If I split mySentence over the character 't', the result would be:
       {0×0 char}    {'he cow jumped over '}    {'he moon'}
    %if I split it over '_' we would just have one cell because there are
    %no underscores in the sentence.
    sentenceParts2 = strsplit(mySentence,'t');
    sentenceParts3 = strsplit(mySentence,'_
    
    
% Homework item 4 (review): 
% What would be the result if we used (1) instead of {1} as the lower-level
% index to define compressedItem1?

    %I think if I used (1), the output would only give us the first
    %characters of the beginning of the list.
    
    
% Homework item 5
% 
% The prose descriptions for each line of code are given in the for loop
% below. Provide the code versions of the descriptions. 

% A loop to tell you, in natural-sounding English, what the shopping list
% is for each week, with a line break between each week. 
% --- The list should take the form "milk, eggs, and bread", not "milk, 
% eggs, bread". 
% --- The sentence should say "The ingredient/s you need for week X IS/ARE
% LIST. That is, if there is only one ingredient for the week, it should
% use "is" and "ingredient", and if there is more than one, it should use 
% "are" and "ingredients"


lockdownShoppingList{1}= {'milk' 'eggs' 'bread'}
lockdownShoppingList{2}= {'strawberries'}
for w= 1:length(lockdownShoppingList)
    nItems= length(lockdownShoppingList{w});
    if nItems>1
        beForm='are';
        ingrForm='ingredients';
    else
        beForm= 'is';
        ingrForm= 'ingredient';
    end
end


   if nItems > 1  
        proseList = [sprintf('%s, ', lockdownShoppingList{w}{1:end-1}), 'and ' lockdownShoppingList{w}{end}]; 
    elseif nItems == 1 
        proseList = lockdownShoppingList{w}{1}; 
   end
    
   fprintf(['The ' ingrForm ' you need for week %d ' beForm ' ' proseList '.\n'], w); 
   
   
   
  
    
    
    
    

