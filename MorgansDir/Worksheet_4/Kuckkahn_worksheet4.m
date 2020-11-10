% Homework Item 3
if isempty(varEnter)
    varEnter = 8;
end

% Homework Item 4
if strcmp(myLab, 'SMAC')
    fprintf('Your PI is Prof. Ben Parrell')
elseif strcmp(myLab, 'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek')
else
    fprintf('Oh no! You have no PI') 
end

%Homework Item 5
hypotenuse = sqrt(leg1^2 + leg2^2); 
%This calculates the hypotenuse by takes the squareroot of the sum of the
%squares of both legs. 

if round(hypotenuse) ~= hypotenuse
    %This rounds the value you find above to a whole integer. If the value
    %is not equal to the unrounded hypotenuse value, it will move the next
    %step. 
    hypotenuse = NaN; 
    %This assigns the hypotenuse to Not a Number value. 
    fprintf('No Pythagorean triple exists with these two leg lengths\n');
    %this prints in the command window. 
