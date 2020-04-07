%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 6: Indexing
% 
% - Skills introduced: 
% --- Indexing introduction
% --- Indexing on different variable types
% --- : notation
% --- Logical indexing
% ------ Vowel indices in waverunner
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Vocab check: Enclosing punctuation
% (parentheses)
% [square brackets]
% {curly braces}


%% Indexing introduction
% Suppose you have a spreadsheet in Excel with 20 rows and five columns.
% Say you want to grab all the information in the 10th row.
% This means that for every column, you want the tenth item in that column
% right? In Excel it's easy: you just highlight that row, copy/paste and
% you're done.
% Of course in code land, you're avoiding doing anything manual like
% highlighting and copy/pasting right?
% Instead, we index. Depending on the data type of your variable, there are
% different ways of finding whatever item you want--the nth (or ith, you might also see in help
% tutorials) item in a vector or list or whatever.

% With a vector of doubles, indexing is very straightforward: use
% parentheses after the vector with the n (for the nth item) that you'd
% like.
myShortVector = 1:50 % shortcut to create a series of numbers with all integers between the first and last number
%  If you want the 10th item in this vector:
myShortVector(10)


%% Homework 1: 
% load myLongVector.mat by either double-clicking it or by
% typing (make sure you're in the 00_remote_worksheets folder):
load('myLongVector.mat');
% in your worksheet in your own personal folder, please give the 200th,
% 504th, and 830th items in myLongVector, which you'll probably notice is not sequential.
% Yes, I am enjoying picking random numbers.

%% strings and cells
% You may recall from the variable types sheet that we also have string and
% cell data types. This gets a little tricky. Typically, words will be
% concatenated in a cell array.
load('myCells.mat')
myCells % look, an assorted box of about 25 baker's dozen each Robins and Sarahs!
% Remember that the curly braces denote a cell.
% try this:
myCells(1)
% what is the data type that is returned to you?
% then try
myCells{1}
% What is the data type that is returned to you now?
% You can think of this as the curly braces giving you whatever is inside
% the cell. 

%% Multiple indexing
% Suppose you want multiple elements of a vector? very simple: put a vector
% inside the parentheses:
myLongVector([1 2 4])
myCells([8 16 32 64])

% You can also use the : to get all the integers between two integers:
myLongVector(1:4) % notice we no longer need the square brackets
myLongVector([1 2 3 4])
% or, you can use the colon on its own to refer to all the elements in a
% vector. This is particularly useful if you want to make a vector full of
% kitties:
kittyVector = cell(1, 20) % makes an empty cell array with one row and 20 items.
kittyVector(:) = {'kitty'} % note that this is a cell array so we have to fill it with cells

% A place this might actually be useful is if you are running an experiment
% and you want all or most of your stimuli to be the same word.

%% special usage: "end"
% You now know that "end" finishes any if, for, or while statement. As an
% index, "end" can be used to mean "the last one." If you do python, it
% works just like the index -1. It's great if you don't care how long a
% vector is or don't know, but you just care what the last element is.
myLongVector(end)
% in this case, end kind of functions like a number. If you wanted the
% second-to-last element, you could write:
myLongVector(end-1)


%% Logical indexing

% Maybe you want to find all the indices where elements have (or don't
% have!) a particular value. This homework will step you through such
% logical indexing. It's a shortcut for the following "psuedocode" (not
% real code, kind of like the way an outline isn't a real essay).

% for every element in my vector,
%   if that element has a particular value,
%       tell me what index that element is.
%   end
% end

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

% Now you need the find function. It returns indices at which there is a
% nonzero element (item). It takes a doubles vector as input, eg
% find(logicVecgtor).

% b) Where is carrie?
% c) Where is ben?

% BONUS Question: Is alexa in the vector, or is she at home playing smooth
% jazz? Can you think of a theoretical way to find out the answer to this
% question without using the "find" function? Hint: the question "is alexa
% in the vector" is a yes/no question, or boolean, and logicVector is just
% a long row of zeros and potentially ones.

%% waverunner
% Much like in audioGUI, you can run waverunner over only a particular set
% of trials instead of all the trials. Say, all the "eh" vowels. 
% How many of you are also feeling a little "eh" during this whole staying home thing?

% the expt object, as you are no doubt familiar, has an "inds" field. If
% you thought those "inds" were indices, you were correct!!!

load('uhdapter_test_expt.mat')
ehVector = expt.inds.vowels.eh;

open waverunner.m

%% Homework 3 
% a) what does ehVector contain?

% b) Given what we have learned about arguments and optional arguments, what
% is an example of what a waverunner command might look like if you ran it
% just over the eh indices?
