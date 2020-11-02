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
% MB 10/28/2020: No, it adds the squared legs together?

if round(hypotenuse) ~= hypotenuse % If the hypotenuse is an integer it does not equal the hypotenuse.
    % RK 10/14: This isn't what the if condition is checking for! 
%MB 10/28: If you round the hypotenuse to an integer and it does not equal the hypotenuse
    
    hypotenuse = NaN; % This will see if the hypotenuse is not a number. 
    % RK (4/13): not exactly! What does = do in Matlab? 
%MB 10/28: The equal sign creates a variable.
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); %this is what will print if they are not equal
    % RK (10/14): if what is not equal? 
%MB 10/28: I was wrong when I said that. Is it what will print if no Pythagorean triple exists? Because if you round the hypotenuse to the nearest integer and it doesn't equal the hypotenuse then the hypotenuse will be not a number?

