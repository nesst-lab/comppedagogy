%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 3: functions and arguments 
% 
% - Skills introduced: 
% --- What is a function?
% --- Input arguments
% --- Outputs
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_3 in your personal
% directory inside comppedagogy. 
% *** 

%% What is a function? 

% 1. You may have heard of "functions" and "scripts". A script is basically a file of commands where nothing
% will change from run to run. For example:
basic_pythagTripleScript

% (If you get an error here that says that no such function exists, remember to check your path!) 

% 2. Let's take a look at this script. 
open basic_pythagTripleScript % remember to not change anything! 

% You can see here that there are three variables: a, b, and c. However, they are hard-coded in this script:
% you couldn't change their values when running this script unless you opened up the file and changed it. But
% we don't want to do that! Why not? 

% --- More opportunity for introducing errors, via typos or bad coding practices, etc. 
% --- If many people are using this same code, all the individual changes will result in merge conflicts on
% git

% What to do? Use functions! 

%% Input arguments

% 1. A function is something that can take INPUT ARGUMENTS that can be changed flexibly, rather than relying
% on hard-coded values for variables. 
basic_pythagTripleFunction(3, 4, 5); 
basic_pythagTripleFunction(4, 5, 6); 
basic_pythagTripleFunction(12, 13, 5);

% Let's take a look at this function! 
open basic_pythagTripleFunction

% Now, instead of having the variables a, b, and c defined inside the script, we see that the function
% definition is basic_pythagTripleFunction(a,b,c). That means that when you CALL the function by running the
% command basic_pythagTripleFunction(3,4,5), a = 3, b = 4, and c = 5. If you run it as
% basic_pythagTripleFunction(12,13,5), a = 12, b = 13, c = 5. 

% 2. So far we've put in numbers directly as function inputs, but we could also put in variables that we've
% defined:
side1 = 15; 
side2 = 17; 
side3 = 4; 
basic_pythagTripleFunction(side1,side2,side3); 

% Note that you don't have to call these variables a, b, and c! Once you call this function, a new variable
% workspace is created. There, it assigns the variables: a = side1, b = side2, c = side3. 

% 3. New variable workspaces mean that you can have the same variable name in multiple functions that don't
% overwrite each other. So, let's define three variables: 
a = 8; 
b = 12; 
c = 13; 

% You should see these in your variable workspace. Now open the function basic_pythagTripleFunction (refer to
% item 1 if you've forgotten how to do this). On the very leftmost side of the function, you should see
% numbers, which refer to the line in the script. Next to line numbers that have code in them, you should see
% little hyphens -. Click on the hyphen on line 19, next to the very last "end". This creates a BREAKPOINT,
% which means that the code will stop running before it hits that line. 

% In this case, putting a breakpoint before the last "end" means that the script will stop running before
% telling you whether or not these three values make a Pythagorean triple. 

% If you still have side1, side2, and side3 defined, use those again. If not, redefine them before calling: 
basic_pythagTripleFunction(side1,side2,side3); 

% *** 
% Homework item 1: 
% 
% Magic! Your script should have stopped. Take a look at your new variable workspace. There should be a
% different set of variables than there were before you called the function---no side1, side2, or side3, and
% a, b, and c should be different from what you defined them as at the beginning of 3! What values do they
% have and why? 
% 
% Include your answers in worksheet_3 by editing with vi. 
% 
% ***



%% Outputs

% 1. So far we've been working with only inputs, and our function just told us something about those inputs.
% But some functions return values to us as well. These are called outputs, and we can assign these outputs to
% variables. 
hypotenuse = basic_pythagHypotenuse(3,4); 

% The function basic_pythagHypotenuse takes two inputs and tells you what the hypotenuse is if they can make
% up a Pythagorean triple. If not: 
hypotenuse = basic_pythagHypotenuse(5,6); 

% Basically anytime you run a command on Matlab and it spits back out at you that ans = something, that
% function has at least one output. 

% 2. Let's take a look at some common functions that we use: 
testVector = [10 3 6 8 1 2 9]; 
vectorMax = max(testVector); 
vectorLength = length(testVector); 

% But wait, what does the function max do?? We can find out with a simple command: 
doc max 
doc length

% *** 
% Homework item 2: 
% 
% Min will return you the minimum value of some kind of numerical input, and needs one input argument. So what
% value would vectorMin be in the following expression? 
% 
% vectorMin = min(testVector); 
% 
% Don't evaluate this statement in Matlab before you answer (you can check afterward). Include this in your
% worksheet_3 text file. 
% 
% ***

% 3. Functions can have multiple outputs, as well! In this case, you can define multiple variables at once by
% using [] square brackets: 
testMatrix = [1 2 3; 4 5 6]; 
[rows,columns] = size(testMatrix); 

% Let's look at what the function size does: 
doc size

% We're using size here instead of length because testMatrix has multiple columns AND multiple rows. Size
% returns the dimensions in order: x, y, z, etc. Important to note here is that you don't FORCE output 1 to be
% rows and output 2 to be columns just by naming them as such: 
[ros, cols] = size(testMatrix); 
[googly, boogly] = size(testMatrix); 

% In all cases, the first output will be 2, and the second output will be 3. 

% 4. Sometimes we don't care about all the outputs of a function, but the function will spit them out anyway.
% In this case, we can just decline to assign the output to a variable by using ~. 
anotherMatrix = [1 2; 3 4; 5 6; 7 8]; 
[moreRows, ~] = size(anotherMatrix); 

% If we tried to just get the first output by only specifying one variable, we get a vector anyway: 
anotherSize = size(anotherMatrix); 



