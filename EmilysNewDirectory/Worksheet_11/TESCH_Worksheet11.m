goodSentence= [upper(sentence(1)) sentence(2:10) upper(sentence(11)) sentence(12:38) upper(sentence(39:42)) sentence(43:47) upper(sentence(48:51)) sentence(52:60) upper(sentence(61:64))sentence(65:end)];
for i =1:length(sentence)
if rem(i,2)
bobSentence(i) = lower(sentence(i));
else 
bobSentence(i) = upper(sentence(i));
end
end
sprintf(bobSentence) %homework item 2
%homework 3: 't' will esentially take out the ts in the sentence and '_'
%wont change anything because there aren't any _ in the sentence. 
splitSentence = strsplit(mySentence, 't')
%homework item 4 (1) gives a 1x1 cell array with 'bell peppers' in it but
%{1} just gives 'bell peppers'

splitSentence =

  1×3 cell array

    {0×0 char}    {'he cow jumped o…'}    {'he moon'}

testSentence = strsplit(mySentence, '_')

testSentence =

  1×1 cell array

    {'the cow jumped over the moon'} 
for w = 1:length(lockdownShoppingList)%homework 5 (this was a lot of pieces and pretty confusing)
    nItems = length(lockdownShoppingList{w}); 
    if nItems > 1
        beForm = 'are';
        ingrForm = 'ingredients'; 
    else
        beForm = 'is'; 
        ingrForm = 'ingredient'; 
    end
    if nItems>1
        proseList = [sprintf('%s, ', lockdownShoppingList{w}{1:end-1}), 'and ' lockdownShoppingList{w}{end}]; 
    elseif nItems == 1 
        proseList = lockdownShoppingList{w}{1}; 
    elseif nItems == 2 
        proseList = [lockdownShoppingList{w}{1} ' and ' lockdownShoppingList{w}{2}]; 
    end
    fprintf(['The ' ingrForm ' you need for week %d ' beForm ' ' proseList '.\n'], w);   
end