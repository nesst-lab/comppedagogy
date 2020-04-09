% HOMEWORK ITEM 3
randomVar = [];
if isempty(randomVar)
    randomVar = 7
else 
    % do nothing
end 

%HOMEWORK ITEM 4
labVar = "SMAC";
if labVar == "SMAC"
    fprintf('Your PI is Prof. Ben Parrell')
elseif labVar == "BLAB"
    fprintf("Your PI is Prof. Carrie Niziolek")
else
    fprintf("Oh no! You have no PI")
end 

%HOMEWORK ITEM 5
leg1 = 3
leg2 = 5

hypotenuse = sqrt(leg1^2 + leg2^2); % calculates hypotenuse (square root of the sum of the squares of both legs)

if round(hypotenuse) ~= hypotenuse % checks if hypotenuse is an integer
    hypotenuse = NaN; % assigns to not a number
    fprintf('No Pythagorean triple exists with these two leg lengths\n');
end