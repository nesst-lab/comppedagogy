
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
% RK 10/14: are you sure about the last one? 

a | (b & c)
#####
% RK 10/14: Is this false (as you predicted the last one would be)?

% short circuiting

% 1. I do not think there is a short-circut version of xor because only one of the
% statements in an xor can be true so you must evaluate both statements. 

% nargin < 1 would have to be the first statement in the code because once
% MatLab realizes that nargin is 0, it will stop evaluating. 

% switch-case statements

% the variable greeting for a = 4 doesn't exist so it produces an error.
% switch/case is that it can shorten the code so you don't have
% to deal with each value individually. 

#####
% RK 10/14: Not sure what you mean by this, and how it is separate from your explanation of if statements below? 

% if/else statements can help ease the process of dealing with multiple
% cases that result in the same process at once. 

% Practice translating switch/case to if/else

condWord = 'tapper';
if strcmp(conWord, 'capper') || 
    strcmp(condWord, 'gapper')
    ##### 
    % RK 10/14: you're missing something here to allow you to break lines 
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

#####
% RK 10/14: you can, actually! Check back through the worksheet or do doc switch

#####
% RK 10/14: So I notice your first and third answer in this question are identical to Kathleen's, in such a way
% that it is almost impossible that there was not copying and pasting going on. Remember that these worksheets
% are not done for a grade, and are meant to teach you the programming tools necessary to work on coding in
% the lab. Simply copying and pasting someone else's answers won't help you at all, and allowing someone else
% to just copy and paste your answers doesn't help them either (though of course everybody in the lab has 
% access to this repository so that is not something you have total control over). 