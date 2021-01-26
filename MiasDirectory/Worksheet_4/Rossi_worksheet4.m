%Homework item 3
emptyVariable = [];
if ~isempty(emptyVariable)
    emptyVariable = 9;
%Homework item 4
if strcmp(LabName,'SMAC')
    fprintf('Your PI is Prof. Ben Parrell\n')
elseif strcmp(LabName,'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek\n')
else
    fprintf('Oh no! You have no PI\n')
end
%Homework item 5
hypotenuse = sqrt(leg1^2 + leg2^2); %the hypotenuse is caluclated by square rooting the sum of leg 1 squared and leg 2 squared.

if round(hypotenuse) ~= hypotenuse %the code will round the hypotenuse to the nearest integer
                                   %however, if the roundest integer is not
                                   %equal to the hypotenuse then
                         
    hypotenuse = NaN; %the hypotenuse will not be assigned not a number
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); %and display this in the command window
end