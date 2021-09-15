% This is a script

a = 3; 
b = 4; 
c = sqrt(a^2 + b^2);
fprintf('Side a = %d; Side b = %d; Side c = %d\n',a, b, c); 

if round(c) == c
    fprintf('a, b, and c form a Pythagorean triple\n')
else
    fprintf('a, b, and c are NOT a Pythagorean triple\n');
end

