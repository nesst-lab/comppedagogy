%% Homework 4 answer key

%% Homework item 1
% 
% Is strcmp(string1, string2) case sensitive? How would you find this out without looking it up with either
% the doc command or by googling it? Write your solution in the worksheet_4 homework file using vi.
% 
% ***

% Yes it is case sensitive. 
% You could test by typing strcmp('test', 'Test') and see if you get a 1 or
% a 0

%% Homework item 2
% 
% The function exist('nameOfSomething') returns different integers if that "something" exists as a different
% object. For example, if it exists as a variable, it returns 1, if it exists as a file, it returns 2, etc.  
% 
% Given this if statement: 
% if exist('basic_pythagHypotenuse')
%   fprintf('This exists!\n')
% end
% 
% Would you expect the statement 'This exists!' to print? Why or why not? Include your answer in your homework
% document that you created with vi.
% ***

% Yes. basic_pythagHypotenuse is a file. exist should therefore return a 2
% (this indicates that it is a file rather than some other thing like a
% variable; different things return different numbers). All if cares about
% is if the value it is fed is 0 or not (i.e. it isn't "is it 1 and only 1,
% or something else" but rather "is it anything other than 0?") 

%% Homework item 3 
% Write an if statement that will: 
% a. Check if a variable is empty
% b. If it is, assign it a numeric value
% c. Do nothing if not 
% ***

myStomach = []; 
if isempty(myStomach)
    myStomach = 2;
end
% Note that for "do nothing" you can just omit the else statement. If you
% want to be thorough you can do some kind of non-action, like myStomach =
% myStomach or a print statement. 

% ***
% Write an if statement that will: 
% a. Check if a variable is 'SMAC'. If so, print 'Your PI is Prof. Ben Parrell'
% b. If not, check if that variable is 'BLAB'. If so, print 'Your PI is Prof. Carrie Niziolek'
% c. If not, print 'Oh no! You have no PI'
% 
% NB: to print something, use the fprintf statements from above. If you need help, remember you can always
% do the command: 
% doc fprintf
% ***

if strcmp(DatLab,'SMAC')
    fprintf('Your PI is Prof. Ben Parrell')
elseif strcmp(DatLab, 'BLAB')
    fprintf('Your PI is Prof. Carrie Niziolek')
else
    fprintf('Oh no! You have no PI!')
end

%% Homework item 5: 
% 
% The function basic_pythagHypotenuse is largely uncommented in the body of the function. Copy the body of the
% function (i.e., don't include the function...end statements) into your homework Matlab document. Using the
% comment capability of Matlab, include comments about each line describing what is happening in that line. 
% 
% Remember that for functions you don't already know, you can use the "doc" command to look them up (or google
% them!). 
% ***

hypotenuse = sqrt(leg1^2 + leg2^2); 
% here we calculate the hypotenuse, which is the square root of the sum of
% squares of the given sides

if round(hypotenuse) ~= hypotenuse 
    % This checks if hypotenuse is an integer by checking if a rounded
    % hypotenuse is the same as the original hypotenuse. If it's not, 
    hypotenuse = NaN; % then set hypotenuse to NaN (this will be your variable output) 
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); 
    % And tell the person who ran the script that no pythagorean triple
    % exists
end 
    