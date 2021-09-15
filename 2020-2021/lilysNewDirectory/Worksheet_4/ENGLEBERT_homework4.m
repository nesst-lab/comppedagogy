% ***
% Homework item 3: 
% 
% Write an if statement that will: 
% a. Check if a variable is empty
% b. If it is, assign it a numeric value
% c. Do nothing if not 
% ***

myCup= []
if isempty(myCup)
    myCup= 14
end

% ***
% Homework item 4:
% Write an if statement that will: 
% a. Check if a variable is 'SMAC'. If so, print 'Your PI is Prof. Ben Parrell'
% b. If not, check if that variable is 'BLAB'. If so, print 'Your PI is Prof. Carrie Niziolek'
% c. If not, print 'Oh no! You have no PI'


if strcmp(lab,'SMAC')
    fprintf ('Your PI is Prof. Ben Parrell\n')
elseif strcmp(lab,'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek\n')
else 
    fprintf('Oh no! You have no PI\n')
end

lab='BLAB'


% ***
% Homework item 5:
%
% The function basic_pythagHypotenuse is largely uncommented in the body of the function. Copy the body of the
% function (i.e., don't include the function...end statements) into your homework Matlab document. Using the
% comment capability of Matlab, include comments about each line describing what is happening in that line. 
% 
% Remember that for functions you don't already know, you can use the "doc" command to look them up (or google
% them!). 
% ***

function [hypotenuse] = basic_pythagHypotenuse(leg1, leg2)
% Returns the hypotenuse that would create a pythagorean triple with the given legs, if one exists

hypotenuse = sqrt(leg1^2 + leg2^2); 
% defines what equation should run to find the hypotenuse value when given
% the values of the 2 legs

if round(hypotenuse) ~= hypotenuse
    %checks to see if the hypotenuse is a whole number (if not, it will round to nearest whole number)
    %then checks if it's equal to the original hypotenuse
    hypotenuse = NaN; 
    % if the values are not equal, it assigns the hypotenuse value as NaN
    fprintf('No Pythagorean triple exists with these two leg lengths\n');
end
% if the 2 legs don't equal an assigned hypotenuse value, print that there
% is no Pythagorean triple.
end



    
    