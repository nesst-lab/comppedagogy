%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Agenda for BASIC 2 Wednesday April 8
% 
% Run by Robin Karlin; in attendance Sophie, Dylan, Kenzie
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
% 1. Questions? 

%% Logical operators: &, |, xor(a,b) 

% 1. & (logical and): When running an if statement, you might want more than one condition to hold.

a = 2; 
b = -1; 

% - print out 'hello world' if...
% --- both a and b are positive
% --- both a and b are integers
% --- both a and b are nonzero
% --- neither a nor b are empty 

% 2. | (logical or): You may also want to act if any of a set of conditions is true. The operator | is an
% inclusive or: at least one condition has to be true. 

% - print out 'hello world' if...
% --- either a or b is positive
% --- either a or b is an integer
% --- either a or b is nonzero
% --- either a is empty or b is not empty

% 3. xor(x, y) (exclusive or): Exclusive or just means that ONLY one thing can be true, not both. For example,
% you might offer a child an exclusive or choice: you can have either a lollipop or an ice cream, but not 
% both. Or when choosing an included side with a meal: would you like the baked potato, or the salad? 

xor(a>0,b>0)

% - print out 'hello world' if...
% --- either a or b is positive, but not both
% --- either a is empty or b is not empty (but not both conditions) 
% ------ how would you assign a and b such that you would actually print something out? How about another way
% to not print anything out (other than a = 2 and b = -1)? 

% 4. You can also combine things. Easy example: 

a = 1; 
b = 1; 
c = 0; 

% What will the results be? 
a & b & c 
a & b | c
a | b & c

% Which expression is the third expression (above) equivalent to?
(a | b) & c
a | (b & c)

%% Short-circuiting 

% 1. You may see in some of our SMNG scripts doubled operators: && and ||. This means that you are
% "short-circuiting". Short-circuiting means that the first part of the statement will be evaluated, and if
% the outcome is already determined, then Matlab does not bother looking at the second (third, fourth, etc.)

a = 15; 
b = 5; 

if a < 0 && b > 0 % how would you translate this? 
	print('hello world!\n')
end 

% a is NOT negative, so you don't even have to know if b is positive or not to figure out that your "and" 
% statement will be false. Thus, Matlab would never evaluate the b > 0 portion. Similarly:

if a > 0 || b < 0 
	print('hello world!\n')
end

% a is positive, so it doesn't matter if b is positive or negative; at least one of the conditions is true. 

% Food for thought: is there a short-circuit version of xor? 

% 2. One of the reasons we use short-circuiting is because it is more efficient---in some cases, the computer
% has to do less. However, we also use these forced operators in cases where evaluating the second (or third, 
% or fourth, etc.) part of the statement would result in an error. For example, when you call audioGUI, you 
% are typically calling it without any arguments. But sometimes you DO include arguments (like if you're doing
% signalIn vs. signalOut---you have to tell Matlab which one you want to do). Let's take a look at this code: 

open audioGUI 

% function [] = audioGUI(dataPath,trialnums,buffertype,figpos,bSaveCheck)
% if nargin < 1 || isempty(dataPath), dataPath = cd; end
% if nargin < 2, trialnums = []; end
% if nargin < 3 || isempty(buffertype), buffertype = 'signalIn'; end
% if nargin < 4, figpos = []; end
% if nargin < 5, bSaveCheck = 1; end
% end

% You know from your functions and arguments worksheet that audioGUI can take up to five input arguments. But 
% you can call it with empty arguments: 

audioGUI([],[45],'signalIn',[],0)

% or no arguments:

audioGUI

% So what these first lines of code are doing is to set the defaults. Let's look at the first one: 

if nargin < 1 || isempty(dataPath), dataPath = cd; end

% nargin is the number of arguments that the function received. What would a call to audioGUI look like with 0
% arguments? And with an empty argument in place of dataPath? 

% Let's say we just called audioGUI with no arguments: 
audioGUI

% What would happen if we tried to evaluate both halves of this or-statement? (check if nargin < 1; check if 
% dataPath is empty)

% in this case, nargin = 0, and thus dataPath necessarily doesn't exist. If you tried to figure out if it was
% empty, it would error: 

isempty(dataPath)

% So you want Matlab to stop evaluating the or statement as soon as it figures out that nargin is 0. Would it
% be okay to write the statement as follows? Why or why not? 

if isempty(dataPath) || nargin < 1, dataPath = cd; end

%% Switch-case statements

% 1. If statements are in a class of statements called "jumps": they make the compiler jump around and not run
% every line of the code. The other type of jump is a switch-case statement, which works similarly: 

condWord = 'capper'; 
switch condWord
    case 'capper'
        max_events = 7;
    case 'gapper' 
        max_events = 8; 
    case 'sapper' 
        max_events = 9; 
    case 'zapper'
        max_events = 10; 
end
fprintf('You may have at most %d events\n',max_events); 

% The basic anatomy here is that you start the statement with the keyword "switch", followed by the variable
% that you want to switch process on, depending on what CASE it is. That is followed by multiple "case" lines,
% which indicate the possible cases. Here, condWord might be capper, gapper, sapper, or zapper. Then, just as
% you do for if statements, you terminate with an end. 

% 2. The main difference between switch-case and if statements is that switch-case statements operate over
% expected values of a variable, rather than logical statements. For example, you couldn't do: 

a = 5; 
switch a
    case a>0 
        fprintf('hi\n'); 
    case a<0 
        fprintf('bye\n'); 
end

% This simply won't evaluate. But this will: 

switch a
    case 5 
        greeting = 'hello'; 
    case 6 
        greeting = 'salutations'; 
end
fprintf('Charlotte says %s!\n', greeting); 

% *** 
% Question: what would happen if a were 4? (Before you try to evaluate this, clear your "greeting" variable) 

% 3. If you have multiple cases that would result in the same process, you can combine them (much like an "or"
% in an if/else): 

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

% ***
% Question: what are the advantages/disadvantages of using if/else vs. switch/case? 

%% Practice translating switch/case to if/else and vice versa

% 1. Translate the following to an if/else statement: 
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

% 2. Translate the following to a switch/case statement: 
name = 'sarah'; 
if strcmp(name,'sarah')
    almaMater = 'UC Berkeley'; 
elseif strcmp(name,'robin')
    almaMater = 'Cornell University'; 
end
fprintf('%s earned her PhD at %s\n',name,almaMater); 

% 3. Can you translate the following to a switch/case statement? 
name = 'ben'; 
if strcmp(name,'sarah')
    almaMater = 'UC Berkeley'; 
    possPro = 'her'; 
elseif strcmp(name,'robin')
    almaMater = 'Cornell University';
    possPro = 'her'; 
elseif strcmp(name,'ben')
    almaMater = 'USC'; 
    possPro = 'his'; 
elseif strcmp(name,'carrie')
    almaMater = 'MIT'; 
    possPro = 'her'; 
else 
    almaMater = 'unknown'; 
    possPro = 'their'; 
end
fprintf('%s earned %s PhD at %s\n',name,possPro,almaMater); 