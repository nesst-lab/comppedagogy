if isempty(emptyVariable) == 1
    fprintf('Not empty!\n')
end

if strcmp(labName, 'SMAC')
    fprintf('Your PI is Prof. Ben Parrell')
elseif strcmp(labName,'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek')
else 
    fprintf('Oh no! You have no PI')
end

[hypotenuse] = basic_pythagHypotenuse(leg1, leg2)
% Returns the hypotenuse that would create a pythagorean triple with the given legs, if one exists

hypotenuse = sqrt(leg1^2 + leg2^2); 
% Adds the given legs together then takes the square root.

if round(hypotenuse) ~= hypotenuse % If the rounded hypotenuse is not equal to the hypotenuse (?)
    hypotenuse = NaN; 
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); %this is what will print if they are not equal