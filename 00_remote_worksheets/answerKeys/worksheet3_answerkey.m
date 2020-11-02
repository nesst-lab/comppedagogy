%% Worksheet 3 answer key

%% Homework item 1: 
% 
% Magic! Your script should have stopped. Take a look at your new variable workspace. There should be a
% different set of variables than there were before you called the function---no side1, side2, or side3, and
% a, b, and c should be different from what you defined them as at the beginning of 3! What values do they
% have and why? 
% 
% Include your answers in worksheet_3 by editing with vi. 
% ***

% a is side1 (15), b is side 2 (17), c is side 3 (4). 
% This is because the function needs three variables, called a, b, and c
% (check the definition of the function). So in your "base" workspace
% (outside of the function), you called: 
% 
basic_pythagTripleFunction(side1, side2, side3) 

% As soon as that function is called, you are now inside the workspace of
% basic_pythagTripleFunction, instead of the "base" workspace.
% basic_pythagTripleFunction takes the first input and calls it a, the
% second input and calls it b, and the third input and calls it c. It then
% uses these new names and values in its own calculations (you can see in
% the body of the script that it is using a, b, and c). Inside this
% workspace there are no variables called side1, side2, and side3, so they
% "disappear" (but you should be able to go up to where Matlab has a "quit
% debugging" button with a red square and next to it a drop-down list
% called Function Call Stack. If you change what "stack" you're in you'll
% see that the variables will change to whatever they were in that
% function's workspace. 

%% Homework item 2
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

% The value should be 1 (the smallest number in the vector) 
