1. goodSentence = [upper(sentence(1)) sentence(2:10) upper(sentence(11)) sentence(12:38) upper(sentence(39:42)) sentence(43:47) upper(sentence(48:51)) sentence(52:60) upper(sentence(61:64)) sentence(65:end)];

2. for i = 1:length(sentence)
       if rem(i,2)
	  bobSentence(i) = lower(sentence(i));
       else
	  bobSentence(i) = upper(sentence(i));
       end
   end
   sprintf(bobSentence) 

3. If mySentence is split over the character 't', it would be split it into a cell array that is {0x0 char}, {'he cow jumped over'} and {'he moon'}, so it takes away all of the t's. For '_', mySentence is all in one cell array.

4. If we used (1) instead of {1}, we get a cell array.

5. lockdownShoppingList{3} = {'chocolate'};
   for w = 1:length(lockdownShoppingList)

       nItems = length(lockdownShoppingList{w});
       if nItems > 1
          beForm = 'are';
          ingrForm = 'ingredients';
       else
          beForm = 'is';
          ingrForm = 'ingredient';
       end
 
       if nItems > 2
          list = [sprintf('%s, ', lockdownShoppingList{w}{1:end-1}), 'and ' lockdownShoppingList{w}{end}];
       elseif nItems == 1
          list = lockdownShoppingList{w}{1};
       elseif nItems == 2          
          list = [lockdownShoppingList{w}{1} ' and ' lockdownShoppingList{w}{2}];
       end
       fprintf(['The ' ingrForm ' you need for week %d ' beForm ' ' list '.\n'], w);
   end
