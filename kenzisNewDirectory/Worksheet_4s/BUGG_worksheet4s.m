if a > 0 & b > 0
    fprintf("hello world")
end

if round(a) == a & round(b) == b 
    fprintf("hello world")
end

if a ~= 0 & b ~= 0
    fprintf("hello world")
end

if ~isempty(a) & ~isempty(b)
    fprintf("hello world")
end

if a > 0 | b > 0 
    fprintf("hello world")
end

if round(a) == a | round(b) == b 
    fprintf("hello world")
end

if a ~= 0 | b ~= 0
    fprintf("hello world")
end

if isempty(a) | ~isempty(b)
    fprintf("hello world")
end

if xor(a>0, b>0)
    fprintf("hello world")
end

if xor(isempty(a), ~isempty(b))
    fprintf("hello world")
end

a = []
b = []

a = [2]
b = [-1]

false, true, false

a | (b & c)

% short circuiting

% 1. I do not think there is a short-circut version of xor because only one of the
% statements in an xor can be true so you must evaluate both statements. 

% nargin < 1 would have to be the first statement in the code because once
% MatLab realizes that nargin is 0, it will stop evaluating. 

% switch-case statements

% the variable greeting for a = 4 doesn't exist so it produces an error.
% switch/case is that it can shorten the code so you don't have
% to deal with each value individually. 
% if/else statements can help ease the process of dealing with multiple
% cases that result in the same process at once. 

% Practice translating switch/case to if/else

condWord = 'tapper';
if strcmp(conWord, 'capper') ||
    strcmp(condWord, 'gapper')
    max_events = 7;
elseif strcmp(condWord, 'sapper') ||
    strcmp(condWord, 'zapper')
    max_events = 6;
elseif strcmp(condWord, 'sea') || strcmp(condWord, 'C') || strcmp(condWord, "Z") || strcmp(condWord, 'czar') || strcmp(condWord, 'cod') || strcmp(condWord, 'god')
    max_events = 5;
else 
    max_events = 0; 
end
fprintf('You may have at most %d events\n',max_events);

name = 'sarah';
switch name 
    case 'sarah'
        almaMater = 'UC Berkley';
    case 'robin'
        almaMater = 'Cornell Univesity';
end
fprintf('%s earned her PhD at %s\n',name,almaMater);

% you cannot convert that to a switch/case because it has an else statement
% and that cannot be translated into a switch/case.


