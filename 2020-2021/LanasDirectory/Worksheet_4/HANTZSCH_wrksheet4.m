%HW item 3

testVariable = []

if isempty(testVariable)
    testVariable = randi(3)
end

%HW item 4

if strcmp(labName, 'SMAC')
    fprintf('Your PI is Prof. Ben Parrell\n')
elseif strcmp(labName, 'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek\n')
else 
    fprintf('Oh no! You have no PI\n')
end

%HW item 5
hypotenuse = sqrt(leg1^2 + leg2^2); %calculate the hypotenuse based off of the user input leg1 and leg2

if round(hypotenuse) ~= hypotenuse %If rounding the hypotenuse to the nearest integer does not equal the true hypotenuse (i.e. if it is not an integer) 
    hypotenuse = NaN; %then the hypotenuse is set to not a number
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); %and the given statement is printed
end
