%% Homework_4s Or Operator Function

function or_operator(a, b)

% in this function, I tried putting all operators on one line, I wasn't sue
% if there should be one if statement or a nested if statment, so I made
% the and_operator nested and this not nested.

if isempty(a) | ~isempty(b) | isfloat(a) | isfloat(b) | a > 0 | b > 0
    fprintf('hello world')
end
end
