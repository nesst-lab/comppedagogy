%%
a = 2; 
b = -1; 
if a>0 & b>0
    fprintf('hello world\n')
end

if round(a) == a & round(b) == b
    fprintf('hello world\n')
end

if a ~= 0 & b~= 0
    fprintf('hello world\n')
end

if ~isempty(a) & ~isempty(b)
    fprintf('hello world\n')
end

%%
a = 2; 
b = -1; 
if a>0 | b>0
    fprintf('hello world\n')
end

if round(a) == a | round(b) == b
    fprintf('hello world\n')
end

if a ~= 0 | b~= 0
    fprintf('hello world\n')
end

if isempty(a) | ~isempty(b)
    fprintf('hello world\n')
end

%%
% - print out 'hello world' if...
% --- either a or b is positive, but not both
% --- either a is empty or b is not empty (but not both conditions) 
% ------ how would you assign a and b such that you would actually print something out? How about another way
% to not print anything out (other than a = 2 and b = -1)? 


a = 2; b = -1;

if xor(a>0,b>0)
    fprintf('hello world\n')
end

if xor(isempty(a), ~isempty(b))
    fprintf('hello world\n')
end

%%
% 4. You can also combine things. Easy example: 

a = 1; 
b = 1; 
c = 0; 

% What will the results be? 
a & b & c %False
a & b | c %True
a | b & c %True

% Which expression is the third expression (above) equivalent to?
(a | b) & c %False
a | (b & c) %True

%% Short-Circuiting

1. You may see in some of our SMNG scripts doubled operators: && and ||. This means that you are
% "short-circuiting". Short-circuiting means that the first part of the statement will be evaluated, and if
% the outcome is already determined, then Matlab does not bother looking at the second (third, fourth, etc.)

a = 15; 
b = 5; 

if a < 0 && b > 0 % how would you translate this? If a is negative and b is positive. 
	print('hello world!\n')
end 

% a is NOT negative, so you don't even have to know if b is positive or not to figure out that your "and" 
% statement will be false. Thus, Matlab would never evaluate the b > 0 portion. Similarly:

if a > 0 || b < 0 
	print('hello world!\n')
end

% a is positive, so it doesn't matter if b is positive or negative; at least one of the conditions is true. 

% Food for thought: is there a short-circuit version of xor? No because it
% is logically impossible. You have to evaluate all the way to the end.

%% 

%Question: what are the advantages/disadvantages of using if/else vs. switch/case? 
%If you use switch/case, it can be more condensed, however, switch/case
%does not have an else ability
