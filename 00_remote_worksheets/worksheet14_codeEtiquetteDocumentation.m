%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 14: code etiquette and documentation in Matlab
% 
% - Skills introduced: 
% --- Function structure
% --- Debugging 
% 
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







%% Writing functions: the basics

% 1. Let's take a look at how functions work. Now we'll look at basic_pythagHypotenuse
open basic_pythagHypotenuse

% You should see a function statement enclosing the entire script: "function" declares the beginning of a
% function, and "end" signifies the end. 

% 2. Next we have the output(s), which are enclosed in the []. Your function can have no outputs, in which
% case the brackets would be empty ([]), or however many outputs you want: [output1, output2, output3]

% 3. Then we do an = sign, basically just like how you would assign the output of functions to a variable. 

% 4. Next, the function name. This is how you will call the function, like max or length. Note: when you save
% a function, it should be called the function name. So basic_pythagHypotenuse is saved as
% basic_pythagHypotenuse.m

% 5. Finally, in parentheses, the inputs you need. For our function basic_pythagHypotenuse, we need side1 and
% side2

% 6. Underneath the line declaring the function, it is good practice to have a description of what the
% function does, and what the inputs are. 

% 7. Finally, we have the body of the function. This function is a tad on the complicated side, and involves
% some if statements, but basically it does this: 

% - Take the square root of the sum of side1^2 and side2^2, and assigns it to the variable hypotenuse
% - Check if that number, hypotenuse, is a whole number (if you round hypotenuse, is it the same number as the
% original hypotenuse?) 
% - If it isn't, a whole number, then hypotenuse becomes NaN (not a number) and you are told that the original
% two sides can't make a pythagorean triple. 

% If your function has an output, then the variable in the output has to be defined somewhere in the function.
% In basic_pythagHypotenuse, hypotenuse is the output, and hypotenuse is defined in the function. 

% *** 
% Homework item 3: 
% 
% In your personal folder, create a function called LASTNAME_firstFunction. 
% 
% Write a function that does one of the following: 
% 
% - 
% - 
% - 
% 
% Test out your function to make sure it does what you want it to do by calling it with the necessary inputs.
% When you are satisfied, push it to the repository. 
% 
% Note: you have to save any changes you make before running an udpated version of a function. So if you fix a
% typo and then don't save, the version being run will still have the typo. 
% 
% ***

