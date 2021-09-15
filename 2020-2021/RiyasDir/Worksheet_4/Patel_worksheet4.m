%Homework 3
if isempty(variable)
    variable = 1;
end

%Homework 4
if strcmp(Var,'SMAC')
        fprintf('Your PI is Prof. Ben Parrell')
elseif strcmp(Var,'BLAB')
        fprintf('Your PI is Prof. Carrie Niziolek')
else
        fprintf('Oh no! You have no PI')
end

%Homework 5
hypotenuse = sqrt(leg1^2 + leg2^2); %hypotenuse is equal to the square root of leg1 squared plus leg2 sqaured.

if round(hypotenuse) ~= hypotenuse % seeing if round hypotenuse and is not equal to the original value of hypotenuse
    hypotenuse = NaN; % output isnt a real number
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); % prints this script if the above is true (that the hypotenuse is not a Pythagorean triple)
    
end
