% Logical Operators
a = 2
b = -1

%  1)

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

% 2)

if a > 0 | b > 0
    fprintf("hello world")
end

if round(a) == a | round(b) == b
    fprintf("hello world")
end

if a ~= 0 | b ~= 0
    fprintf("hello world")
end

if ~isempty(a) | ~isempty(b) % RK: reread the question carefully :) 
    fprintf("hello world")
end

% 3)

if xor(a>0,b>0)
    fprintf("hello world")
end

if xor(isempty(a), ~isempty(b))
    fprintf("hello world")
end
 
% a = [], b = []
% a = [], b = 2

% 4)

% false, true, fale 
% (a | b) & c
% *** RK: your third option is wrong, and thus your answer to the follow-up question

% short-circuiting

% 1) 

% no, must always evalute both statements

% 2)

% all default vals 
% no, the first statement is evaluated first
% *** RK: and...? (What would happen if this statement were evaluated?) 

% switch-case statements

% 2) 

a = 4; 
switch a
    case 5 
        greeting = 'hello'; 
    case 6 
        greeting = 'salutations'; 
end
%fprintf('Charlotte says %s!\n', greeting); 
% var greeting does not exist, producing an error

% 3)

% switch/case allow for shorter code when dealing with many particular
% values, if/else allow for more flexibility in conditions, such as ranges
% of values.

condWord = 'tapper'; 
if strcmp(condWord,'capper') || strcmp(condWord,'gapper')
    max_events = 7; 
elseif strcmp(condWord,'sapper') || strcmp(condWord,'zapper')
    max_events = 6; 
elseif strcmp(condWord, 'sea') || strcmp(condWord, 'C') || strcmp(condWord, 'Z') || ...
       strcmp(condWord, 'czar') || strcmp(condWord, 'cod') || strcmp(condWord, 'god')
    max_events = 5; 
else 
    max_events = 0; % prevent error 
    % RK: Good!
end
fprintf('You may have at most %d events\n',max_events); 


name = 'sarah'; 
switch name
    case {'sarah'} % RK: strictly speaking you do not need brackets around singular choices 
        almaMater = 'UC Berkeley'; 
    case {'robin'}
        almaMater = 'Cornell University'; 
end
fprintf('%s earned her PhD at %s\n',name,almaMater); 

% no, can't translate else (no way to give case a value encompassing every
% other possiblity)

