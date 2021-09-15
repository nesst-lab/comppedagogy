function [] = basic_pythagTripleFunction(a,b,c) 
% A function version to evaluate if a trio of numbers is a Pythagorean triple

dbstop if error

triangleSides = [a b c]; 
fprintf('Side a = %d; Side b = %d; Side c = %d\n',a, b, c); 
hypotenuse = max(triangleSides); 
nonHyp = triangleSides(triangleSides ~= hypotenuse); 

bPythagTriple = nonHyp(1)^2 + nonHyp(2)^2 == hypotenuse^2; 

if bPythagTriple
    fprintf('a, b, and c form a Pythagorean triple\n')
else
    fprintf('a, b, and c are NOT a Pythagorean triple\n');
end

end