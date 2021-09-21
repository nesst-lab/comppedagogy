%Worksheet 6: Indexing
%Homework 1:
   % myLongVector(200)= 736
   %myLongVector(504)= 295
   %myLongVector(830)= 130
   
   
%Homework 2:
    
   %a. 
   carrieIx = contains(myCells,'carrie'); 
benIx = contains(myCells,'ben'); 
%b.
    carrieIsAt = find(carrieIx)
    carrieIsAt = 415
    
%c.
     benIsAt= find(benIx)
     benIsAt= 544
%bonus
alexas = myCells(contains(myCells,'alexa')); 
isAlexaHere = ~isempty(alexas); 

isAlexaHere= 0 (she is not there)



%Homework 3:
%a. a list of indices for the eh vowels in this data structure
%b. 
waverunner([], ehVector)