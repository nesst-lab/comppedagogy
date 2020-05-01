% Item #3
if isempty(variable)
    variable = 1;
end

% Item #4
if strcmp('SMAC', variable)
    fprintf('Your PI is Prof. Ben Parell')
elseif strcmp('BLAB', variable)
    fprintf('Your PI is Prof. Carrie Niziolek')
else 
    fprintf('Oh no! You have no PI')
end

% Item #5
function [hypotenuse] = basic_pythagHypotenuse(leg1, leg2)
% Returns the hypotenuse that would create a pythagorean triple with the given legs, if one exists

hypotenuse = sqrt(leg1^2 + leg2^2); 
% sqrt of the sum of the squares of the two legs is being assigned to the
% variable hypotenus

if round(hypotenuse) ~= hypotenuse
    % checking to see if you round hypotenuse if it is not equal to
    % hypotenuse, if it is not equal you do not know have a pythagorean
    % triple
    hypotenuse = NaN; 
    % the output will not be a real number 
    fprintf('No Pythagorean triple exists with these two leg lengths\n');
    % the words are printed when the statement checks if hypotenuse is a
    % pythagorean triple and it is found to not be one 
end

end