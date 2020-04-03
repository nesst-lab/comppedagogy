%% Item 3:
if isempty(varEnter)
   varEnter = 4;
else ~isempty(varEnter); 
    % RK: else by itself doesn't take any conditions---it's just "all other cases". If you want to define
    % another possibility, use elseif (even in binary choices where there are only two possibilities) 
    % RK: also, if you're not doing anything, strictly speaking, you don't need to have an else(if) statement
    % at all. If you want to be really thorough, you can do something tautological like varEnter = varEnter
end
%% Item 4:
if strcmp(myLab,'SMAC')
    fprintf('Your PI is Prof. Ben Parrell\n')
elseif strcmp(myLab,'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek\n')
else 
    fprintf('Oh no! You have no PI\n')
end

%% Item 5:
% Returns the hypotenuse that would create a pythagorean triple with the given legs, if one exists
%
% hypotenuse = sqrt(leg1^2 + leg2^2); 
% Above finds the hypotenuse by multiplying each leg you entered by it's
% sqaure and then adding them and taking the square root of the sum. The
% answer is set equal to 'hypotenuse'
% 
% if round(hypotenuse) ~= hypotenuse
% Above first rounds the variable you found above to a whole number and if
% it is not equal to the unrounded hypotenuse answer, it will move onto the
% code below.
%
%     hypotenuse = NaN; 
% This sets hypotenuse as the not a number value.
%
%     fprintf('No Pythagorean triple exists with these two leg lengths\n');
% This will display in the command window.
