3.
if isempty(emptyVariable)
        emptyVariable == 1;
else 	~isempty(emptyVariable) 
    % RK 9/25/2020: Remember what "else" means and what you're doing when giving a condition of ~isempty! 
end

4.
if strcmp(Var1,'SMAC')
        fprintf('Your PI is Prof. Ben Parrell')
elseif strcmp(Var1,'BLAB'); % RK 9/24/2020: you don't need to suppress any output here (that's what ; does)
    % You could use a , but that is also excessive (usually only used when doing a whole if statement in one
    % line, e.g. 
    % if isempty(myVar), myVar = 1300; end
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

