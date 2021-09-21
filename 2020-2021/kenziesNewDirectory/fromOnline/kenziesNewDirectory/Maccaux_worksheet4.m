% homework item 3:
if isempty(emptyVariable)
    emptyVariable = 2
end

% homework item 4:
if strcmp(myName,'SMAC')
    fprintf('Your PI is Prof. Ben Parrell')
elseif strcmp(myName,'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek')
else 
    fprintf('Oh no! You have no PI')
end

% homework item 5:
[hypotenuse] = basic_pythagHypotenuse(leg1, leg2)
% Returns the hypotenuse that would create a pythagorean triple with the given legs, if one exists
hypotenuse = sqrt(leg1^2 + leg2^2);
% The hypotenuse is the square root of leg 1 squared plus leg 2 squared
if round(hypotenuse) ~= hypotenuse
    hypotenuse = NaN; 
    fprintf('No Pythagorean triple exists with these two leg lengths\n');
end
% If the hypotenuse is round, then it doesn't exist and will output so