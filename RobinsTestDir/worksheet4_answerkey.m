hw 4 answer key


% 
% Is strcmp(string1, string2) case sensitive? How would you find this out without looking it up with either
% the doc command or by googling it? Write your solution in the worksheet_4 homework file using vi.
% 
% ***
'yes it is case sensitive. You could test by typing strcmp("test","Test") and see if same or different'

% ***
% Homework item 2: 
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

'yes! basic_pythagHypotenuse is a file. exist should therefore return a 2. "if" here is really testing whether that number is 0 or not. This is a tricksy problem!!'

% 3. 
% Write an if statement that will: 
% a. Check if a variable is empty
% b. If it is, assign it a numeric value
% c. Do nothing if not 
% ***

if isempty(ThoughtsandPrayers)
    ThoughtsandPrayers = 2;
end

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

% Homework item 5: 
% 
% The function basic_pythagHypotenuse is largely uncommented in the body of the function. Copy the body of the
% function (i.e., don't include the function...end statements) into your homework Matlab document. Using the
% comment capability of Matlab, include comments about each line describing what is happening in that line. 
% 
% Remember that for functions you don't already know, you can use the "doc" command to look them up (or google
% them!). 
% ***

hypotenuse = sqrt(leg1^2 + leg2^2); % here we calculate the hypotenuse

if round(hypotenuse) ~= hypotenuse % if the closest integer to hypotenuse doesn't give an equal number to hypotenuse
    hypotenuse = NaN; % then hypotenuse is not a number!!!!!
    fprintf('No Pythagorean triple exists with these two leg lengths\n'); % this must not be a pythagorean triple
end % boop
    