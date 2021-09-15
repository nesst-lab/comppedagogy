% homework item 1
% - Write the if statements that would print out 'hello world' if...
% --- both a and b are positive
% --- both a and b are integers
% --- both a and b are nonzero
% --- neither a nor b are empty 
a=2;
b=-1;

if a&b>0
fprintf('hello world!\n')
end
    
if round(a&b)==(a&b)
fprintf('hello world!\n')
end

if a&b ~=0
    fprintf ('hello world!\n')
end

if ~isempty(a&b)
    fprintf ('hello world!\n')
end

% Homework item 2
%
% - Write the if statements that would print out 'hello world' if...
% --- either a or b is positive
% --- either a or b is an integer
% --- either a or b is nonzero
% --- either a is empty or b is not empty



if a|b>0
fprintf('hello world!\n')
end
    
if round(a|b)==(a|b)
fprintf('hello world!\n')
end

if a|b ~=0
    fprintf ('hello world!\n')
end

if ~isempty(a|b)
    fprintf ('hello world!\n')
end
    

% Homework item 3
%
% - Write the if statements that would print out 'hello world' if...
% --- either a or b is positive, but not both
% --- either a is empty or b is not empty (but not both conditions) 
% ------ how would you assign a and b such that you would actually print something out? How about another way
% to not print anything out (other than a = 2 and b = -1)? 

if xor(a>0,b>0)
fprintf('hello world!\n')
end
    
if xor(isempty(a), isempty(b))
fprintf('hello world!\n')
end

% to print something out: for the first statement, I would assign one
% variable a negative value and the other a positive value, and for the
% second statement, I would assign 2 empty variables or two non-empty
% variables.
%to not print anything out: I would assign both variables to be positive or
%both to be negative, and for the second statement I would make a an empty
%variable and make b non-empty.


a = 1; 
b = 1; 
c = 0; 

% Homework item 4
%
% What will the results be? 
a & b & c 
% false
a & b | c
% true
a | b & c
% true

% Which expression is the third expression (above) equivalent to?
(a | b) & c
a | (b & c) % this one


% Homework item 5
%
% Food for thought: is there a short-circuit version of xor? 
%no, because with xor you need to check both/all conditions.


% Homework item 6
% Would it be okay to write the statement as follows? Why or why not? 

if isempty(dataPath) || nargin < 1, dataPath = cd; end

% no, because we have 0 args in this case. So, the computer would be
% confused if we tried to check if one of the args is empty.

% Homework item 7
% 
% What would happen if a were 4? (Before you try to evaluate this, clear your "greeting" variable) 
% if a were 4, we would get an error because greeting isn't defined


% Homework item 8
%
% Question: what are the advantages/disadvantages of using if/else vs. switch/case? 
% if/else statements are useful if you have a TON of options since it can
% evaluate a bunch of outcomes. Switch/case is nice if you have a few
% specific outcomes, but doesn't work if you have a ton.

%% Homework item 9
% Practice translating switch/case to if/else and vice versa

% a. Translate the following to an if/else statement: 
condWord = 'tapper'; 
switch condWord
    case {'capper','gapper'}
        max_events = 7;     % doesn't include aspiration. is OST status but not a user event        
    case {'sapper','zapper'}
        max_events = 6; 
    case {'sea','C','Z','czar','gar','cod','god'}
        max_events = 5; 
end
fprintf('You may have at most %d events\n',max_events); 

if strcmp(condWord,'capper')||strcmp(condWord,'gapper')
    fprintf ('You may have at most 7 events\n')
elseif strcmp(condWord,'sapper')||strcmp(condWord,'zapper')
    fprintf ('You may have at most 6 events\n')
elseif strcmp(condWord,'sea')||strcmp(condWord,'C')||strcmp(condWord,'Z')||strcmp(condWord,'czar')||strcmp(condWord,'gar')||strcmp(condWord,'cod')||strcmp(condWord,'god')
    fprintf ('You may have at most 5 events\n')
end

% b. Translate the following to a switch/case statement: 
name = 'sarah'; 
if strcmp(name,'sarah')
    almaMater = 'UC Berkeley'; 
elseif strcmp(name,'robin')
    almaMater = 'Cornell University'; 
end
fprintf('%s earned her PhD at %s\n',name,almaMater); 


name= 'sarah'
switch name
    case {'sarah'}
        almaMater = 'UC Berkeley'
    case {'robin'}
        almaMater = 'Cornell University'
end
fprintf('%s earned her PhD at %s\n',name,almaMater); 

        

% c. Can you translate the following to a switch/case statement? Why/why not? 

%yes, just change the last "else" to "otherwise"
    


    

    