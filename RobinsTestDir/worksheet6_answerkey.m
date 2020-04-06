%% Homework 1: 
% load myLongVector.mat by either double-clicking it or by
% typing (make sure you're in the 00_remote_worksheets folder):
load('myLongVector.mat');
% in your worksheet in your own personal folder, please give the 200th,
% 504th, and 830th items in myLongVector, which you'll probably notice is not sequential.
% Yes, I am enjoying picking random numbers.

homework1answer = myLongVector([200 504 830]); 
% homework1answer(1) == 736
% homework1answer(2) == 295
% homework1answer(3) == 130

%% Homework 2
% Some of the cell pastries in myCells are actually not robins or sarahs. There's a
% hidden carrie and a hidden ben!
% For this scavenger hunt, tell us which index of myCells has the carrie,
% and which has the ben. As a hint, everything is lowercase.

% You'll need two special functions for this:
% contains
% find
% contains is a special function for use with cell arrays:
% [logicVector] = contains(cellarray,'string')
% The logic vector here will contain a truth value (1 or 0) for each item
% in the vector. 

% a) suppose you're looking for carrie first. She's not in her
% office, so maybe she's in the vector. What is the command you will type
% at the command line to get [logicVector] ?
carrieIx = contains(myCells,'carrie'); 
benIx = contains(myCells,'ben'); 

% Now you need the find function. It returns indices at which there is a
% nonzero element (item). It takes a doubles vector as input, eg
% find(logicVecgtor).

% b) Where is carrie?
% c) Where is ben?

carrieIsAt = find(carrieIx); 
benIsAt = find(benIx); 

% BONUS Question: Is alexa in the vector, or is she at home playing smooth
% jazz? Can you think of a theoretical way to find out the answer to this
% question without using the "find" function? Hint: the question "is alexa
% in the vector" is a yes/no question, or boolean, and logicVector is just
% a long row of zeros and potentially ones.

alexas = myCells(contains(myCells,'alexa')); 
isAlexaHere = ~isempty(alexas); 

%% Homework 3 
% a) what does ehVector contain?

% *** It looks like a list of indices for eh vowels in this particular data structure? (eh was said 200 times
% in this epxeriment, it appears) 

% b) Given what we have learned about arguments and optional arguments, what
% is an example of what a waverunner command might look like if you ran it
% just over the eh indices?

% *** I can't find waverunner right now, as I don't think I have the right directories without going remote,
% but I think it'll just be waverunner([ehVector]) except ehVector goes in for the trial index input arg. 