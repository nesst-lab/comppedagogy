emptyVariable = [];
if isempty(emptyVariable)
    emptyVariable= 5;
end
if strcmp(DatLab,'SMAC')
    fprintf('Your PI is Prof. Ben Parrell\n')
else strcmp(DatLab,'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek\n')
else 
    fprintf('Oh no! You have no PI\n')
end
function [hypotenuse] = basic_pythagHypotenuse(leg1, leg2)
% Returns the hypotenuse that would create a pythagorean triple with the given legs, if one exists

hypotenuse = sqrt(leg1^2 + leg2^2); %this makes the hypotenuse variable equal to the sqrt of the sum of the squares of the sides

if round(hypotenuse) ~= hypotenuse %if the rounded hypotenuse doesn't equal hypotenuse then hypotenuse=NaN
    hypotenuse = NaN; 
    fprintf('No Pythagorean triple exists with these two leg lengths\n');%and this prints if there's no pythagorean triple
end

end