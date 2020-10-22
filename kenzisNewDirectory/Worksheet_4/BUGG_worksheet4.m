if isempty(emptyVariable) == 1
    fprintf('Not empty!\n')
    % RK 10/14/2020: This is not what the prompt wanted! (Also, does this make sense given what you've run an
    % if statement on?)
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
% RK 10/14/2020: Does it add the given legs together? :) 

if round(hypotenuse) ~= hypotenuse % If the hypotenuse is an integer it does not equal the hypotenuse.
    % RK 10/14: This isn't what the if condition is checking for! 
    
    hypotenuse = NaN; % This will see if the hypotenuse is not a number. 
    % RK (4/13): not exactly! What does = do in Matlab? 
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); %this is what will print if they are not equal
    % RK (10/14): if what is not equal? 

