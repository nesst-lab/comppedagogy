randomVar = [];
if isempty(randomVar)
    randomVar = 7
else 
    % do nothing
end 

labVar = "SMAC";
if labVar == "SMAC"
    fprintf('Your PI is Prof. Ben Parrell')
elseif labVar == "BLAB"
    fprintf("Your PI is Prof. Carrie Niziolek")
else
    fprintf("Oh no! You have no PI")
end 


hypotenuse = sqrt(leg1^2 + leg2^2); % calculates hypotenuse

if round(hypotenuse) ~= hypotenuse % checks if hypotenuse is an integer
    hypotenuse = NaN; 
    fprintf('No Pythagorean triple exists with these two leg lengths\n');
end