function [hypotenuse] = basic_pythagHypotenuse(leg1, leg2)
% Returns the hypotenuse that would create a pythagorean triple with the given legs, if one exists

hypotenuse = sqrt(leg1^2 + leg2^2); 

if round(hypotenuse) ~= hypotenuse
    hypotenuse = NaN; 
    fprintf('No Pythagorean triple exists with these two leg lengths\n');
end

end