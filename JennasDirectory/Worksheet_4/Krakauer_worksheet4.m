3.
if isempty(emptyVariable)
        emptyVariable = 1;
end

4.
if strcmp(Var1,'SMAC')
        fprintf('Your PI is Prof. Ben Parrell')
elseif strcmp(Var1,'BLAB');
        fprintf('Your PI is Prof. Carrie Niziolek')
else
        fprintf('Oh no! You have no PI')
end

5.
hypotenuse = sqrt(leg1^2 + leg2^2); % the hypotenuse is equal to the square root of leg1 squared plus leg 2 squared

if round(hypotenuse) ~= hypotenuse % if we round hypotenuse to the nearest integer and it is not equal to the original value of hypotenuse, then (next line)
    hypotenuse = NaN; % assign hypotenuse to not a number
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); % prints this script if the above is true
end

