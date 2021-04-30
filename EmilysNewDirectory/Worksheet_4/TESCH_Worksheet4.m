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
if a>0 && b>0
    fprintf('hello world')
end
if round(a) == a && round(b)==b
    fprintf('hello world\n')
end
if a~=0 && b~=0
    fprintf('hello world\n')
end
if~isempty(a) && ~isempty(b)
    fprintf('hello world\n')
end
if a>0 || b>0
    fprintf('hello world\n')
end
if round(a)== a || round(b) ==b 
    fprintf('hello world\n')
end
if a~=0 || b~=0
    fprintf('hello world\n')
end
if ~isempty(a) || ~isempty(b)
    fprintf('hello world\n')
end
if xor (a>0,b>0) 
    fprintf('hello world\n')
end
if xor (isempty(a),~isempty(b)) 
    fprintf('hello world\n')
end
if strcmp(ocndWord, 'capper') || strcmp(condWord,'gapper')
    max_events = 7;
elseif strcmp(conWord, 'sapper') || strcmp(condWord, 'zapper')
    max_events=6;
elseif strcmp(conWord, 'sea')|| strcmp(condWord,'C')||strcmp(condWord,'Z')||strcmp(condWord,'czar')||strcmp(condWord,'gar')||strcmp(condWord, 'cod')||strcmp(condWord, 'god')
    max_events=5;
else 
    max_events=NaN;
end
switch name
    case{'sara'}
        almaMater='UC Berkeley';
    case{'robin'}
        almaMater='Cornell University';
    otherwise
        almaMater='???';
end
%yes that could be translated in the same way the first two were. 