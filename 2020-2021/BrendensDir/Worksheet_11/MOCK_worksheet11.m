%HW Item 1:
properSentence = [upper(sentence(1)) sentence(2:10) upper(sentence(11)) sentence(12:38) upper(sentence(39:42))...
sentence(43:47) upper(sentence(48:51)) sentence(52:60) upper(sentence(61:62)) sentence(63) upper(sentence(64)) sentence(65:end)]

%HW Item 2:
for i = 1:length(sentence)
    if rem(i,2)
        bobSentence(i) = upper(sentence(i))
    else
        bobSentence(i) = lower(sentence(i))
    end
end
sprintf(bobSentence)

%HW Item 3:
sentenceParts2 = strsplit(mySentence,'t');
sentenceParts3 = split(mySentence, '_'); 
%originally I thought the sentece would split after each 't' or '_' but
%instead it deletes them and creates new cell for each part. 

%HW Item 4: 
% (1) gives us a cell while {1} gives us a string.

%HW Item 5:
shoppingList{3} = {'milk'}; 
for w = 1:length(shoppingList)
     nItems = length(shoppingList{w}); 
    if nItems > 1
        beForm = 'are';
        ingrForm = 'ingredients';
    else
        beForm = 'is'; 
        ingrForm = 'ingredient'; 
    end
    
    if nItems > 2 
        proseList = [sprintf('%s, ', shoppingList{w}{1:end-1}), 'and ' shoppingList{w}{end}]; 
    elseif nItems == 1 % 
        proseList = [shoppingList{w}{1} ' and ' shoppingList{w}{2}];
    end
    
fprintf(['The ' ingrForm ' you need for week %d ' beForm ' ' proseList '.\n'], w); 
end