% HOMEWORK ITEM 3
randomVar = [];
if isempty(randomVar)
    randomVar = 7 % RK remember to suppress your output
else 
    % do nothing 
    % RK better coding practice to not have an empty else (you can just have no "else" statement, or if you
    % really want to be robust, do randomVar = randomVar; 
end 

%HOMEWORK ITEM 4
labVar = "SMAC";
if labVar == "SMAC" % RK: just a note, we're pretty updated at the lab but if you're ever coding in earlier Matlab versions, this will error (can't use == with strings in earlier Matlab) 
    % I'm not sure if this would ever occur in your coding, but 'hi' == 'bye' will error (due to different string
    % length), but if you assign var1 = 'hi' and var2 = 'bye', var1 == var2 will be fine. 
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