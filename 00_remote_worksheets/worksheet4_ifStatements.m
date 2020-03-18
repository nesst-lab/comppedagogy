%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 4: if statements ("jumps")  
% 
% - Skills introduced: 
% --- End statements
% --- Re-upping booleans
% --- Writing if statements
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_4 in your personal
% directory inside comppedagogy. 
% *** 

%% End statements

% 1. When you open up a script or a function, you'll see lots of different colors in the file: 
open basic_pythagHypotenuse

% In these worksheets you've seen black: 
intVariable = 2; % and green! 

% Purple: 
stringVariable = 'string'; 
clear stringVariable

% And now, blue: 
if intVariable == 2
    fprintf('Hello world!\n'); 
end

% This is called syntax highlighting. In Matlab, the basic functions and variable definitions are in black,
% comments are in green, strings are in purple, and syntactic keywords are in blue. 

% 2. The thing we'll be focusing on today are examples of syntactic keywords. One very important syntactic
% keyword is "end". We've discussed naming variables before and their requirements, but one thing that you
% CANNOT do is name a variable the same as a syntactic keyword: 

end = 2; % you should get a specific error here telling you what is wrong! 

% With syntax highlighting, you won't have to memorize all the keywords, since they will turn blue
% automatically. However, as you get more familiar with various statement types, you won't need to rely on
% that heuristic.  

% 3. So what is an end keyword? The end keyword marks the end of some kind of statement---if statements, for
% loops, switch/case statements, etc. (We will get to all of those, don't worry!). If you try to write an if
% statement without an end, Matlab will get mad at you. 

% Let's take a look at that if statement from above: 
if intVariable == 2
    fprintf('Hello world!\n'); 
end

% Try clicking on the if. It should become underlined, and the corresponding "end" should also become
% underlined, to show you which keyword initializer that end is matched with.  Let's make the if statement a
% little more complicated, by embedding another if statement inside: 
if intVariable == 2
    fprintf('Hello world!\n'); 
    if exist('stringVariable','var')
       fprintf('You should have cleared this variable!\n')        
    end
end

% Click on the first if again---you should see the underlining happen again. Now, click on the FIRST end (the
% one that is tabbed in). The second "if" should become underlined. The same is true if we put a for statement
% inside, instead of another if statement: 

if intVariable == 2
    fprintf('Hello world!\n'); 
    for i = 1:intVariable
        fprintf('%d\n',i)
    end
end

% You might be thinking that this is kind of a useless feature, since you can very clearly see what end
% corresponds to what if/for initializer! But once scripts get really complicated, Matlab has an additional
% feature, which I will just illustrate with a lot of empty lines. Scroll down to the end of this very
% extended if/for code: 

if intVariable == 2
    fprintf('Hello world!\n'); 
    for i = 1:intVariable
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        fprintf('%d\n',i)
    end
end

% Now click on the first end. A little tag should pop up that tells you what it belongs to (the line for i =
% 1:intVariable), and also what line number that for statement is on (line 92). If you click on the second
% end, it will tell you that it belongs to an if intVariable == 2 that is on line 90. (If you get no popups,
% your Matlab layout and monitor permit many lines to be displayed! Try scrolling until you no longer see the
% if and for initializations.) 

% 4. So why does the first if correspond with the second end, and the second if correspond with the first end?
% You can basically think of if...end and for...end (and any kind of statement that starts with a
% keyword...end) as parentheses---you can contain a set of parentheses within another set of parentheses, but
% you wouldn't cross their contents: 

% { ( ) } --- not { ( } ) 

% 5. Some of you may have already come across this as you ran the previous lines in the code. However, if you
% haven't, entering if statements (or any kind of statement that requires an "end") in the command window
% requires you to enter the entire statement up until the end statement---it won't run the code until you get
% there, even if you hit enter. For example, type the following into the command window: 


Entering if statements (or any kind of statement that requires an end) in the command line: Matlab will
% wait for you to finish entering the statement. So if you type in the command line: 
if intVariable == 2
    
% And then hit enter, you won't get the typical >>, but rather a blank line. This means that Matlab is waiting
% for you to finish the statement. So now type 

end

% And hit enter. Now you should be back to the >> 
    
%% Re-upping booleans

% 1. Recall from worksheet 2 that we were talking about booleans. In this lab, we prefix our boolean variables
% with a lowercase b, like bTestMode: 
bTestMode = 1; 

% 2. The basic boolean values are 0 and 1, but in reality it is 0 vs. everything else. Open a new Matlab
% document, and then copy and paste the four lines of code below. Experiment with changing what bTestMode is
% set to and running the whole code. (Shortcut: if you put two %% at the beginning of the new Matlab document,
% like in line 162 here for Re-upping booleans, you can then hit cmd + enter (or ctrl + enter) to run that
% section all at once!)

bTestMode = 1; 
if bTestMode
    fprintf('This is a yes\n')
end

% Matlab should print out "This is a yes" for every value except 0, be it negative, a decimal, pi, etc. etc. 

% 3. What kinds of booleans can we have? Well, we already know about one, which is used when we run experiment
% code: bTestMode. We can also do things like verify that two things are equal. For example, we've been using
% such a thing in the previous if statements: 

intVariable = 2; 
intVariable == 2 % this will give you a boolean value!
bEqual = intVariable == 2; % and you can assign that output boolean to a variable

% When we assign variables, we use a single = sign. When we want to check if two numbers are the same, we use
% two equals == ! So this statement is checking if intVariable is equal to 2. You can also do other mathy
% operations: 

intVariable > 5
bGreaterThan = intVariable > 5

% 4. But what if your variable isn't a number? Never fear! There is a whole array of functions for you:

% isempty() checks if the variable you put in is, in fact, empty. 
emptyVariable = []; % this variable is empty!
isempty(emptyVariable) % this should give you a logical (boolean) 
bEmpty = isempty(emptyVariable); % And you can assign that output to a variable! 

% You might not have a value at all! It might be an NaN, i.e. not a number. You can check for that: 
errorVariable = NaN; 
isnan(errorVariable) % will this be a 1 or a 0? 
bNan = isnan(errorVariable); 

% Maybe you want to check your string! strcmp(var,string) compares two strings to see if they are equivalent. 
myName = 'sarah'; 
strcmp(myName,'robin') % Will this be a 1 or a 0? 
bSameString = strcmp(myName,'robin');

% 5. Okay, but what if I want to check if they AREN'T equal?? The ~ operator is the negation in Matlab. 
bNequal = intVariable ~= 2; 
bNempty = ~isempty(emptyVariable); 
bNNan = ~isnan(errorVariable); 
bDiffString = ~strcmp(myName,'robin'); 

%% Writing if statements

% 1. Now that you have some booleans, we can write some if statements. At its most basic, an if statement must
% have the following components:
 
if isempty(emptyVariable) % A condition that has to be met
    fprintf('This is empty!\n') % something to do if that condition is met (not strictly necessary, but why have an empty if statement??)
end % an ending statement

% There are a couple of different ways to specify the condition. You can be very explicit: 

if isempty(emptyVariable) == 1 % if isempty(emptyVariable) is equivalent to 1
    fprintf('This is empty!\n')
end

% Or less explicit, like we were before:
if isempty(emptyVariable) % if 1 (yes)
    fprintf('This is empty!\n')
end

% Note that
isempty(emptyVariable) == 1 
% and 
isempty(emptyVariable) 
% Both evaluate to 1! That is, they are both returning logicals. So the less explicit version is a shorter way
% of getting to the same point. 

% ***
% Homework item 1: 
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

% 2. Now, what if you want some additional conditions? Not just "is this name Robin or ANYTHING ELSE" but "is
% it Robin, or is it Sarah, or is it something else?" Introducing: else and elseif! 

if strcmp(myName,'robin')
    fprintf('This is the SMAC lab postdoc\n')
elseif strcmp(myName,'sarah')
    fprintf('This is the BLAB lab postdoc\n')
else 
    fprintf('This is someone else in the lab\n')
end

% elseif defines another specific condition to check. In this case, we first check if myName is 'robin'; if
% that's not the case, then we go down to the next condition: is myName 'sarah'? 

% else just specifies an action to take if none of the specific conditions are met. So if myName is neither
% 'robin' nor 'sarah', then something else will happen. We can now enhance our simple if statements from
% before: 

if isempty(emptyVariable)
    fprintf('This is empty!\n')
else 
    fprintf('Not an empty variable!\n') 
end

% Now, instead of only seeing a line print out if emptyVariable is empty, you will also see something if it's
% NOT empty (the only other available case---a variable can be empty or not, there's no in-between!).  

% 3. Negatives can get a little confusing, so if you are in doubt, do the explicit version of the condition: 
~isempty(emptyVariable) 
% is the same as 
isempty(emptyVariable) == 0

emptyVariable = []; 
if ~isempty(emptyVariable) % if emptyVariable isn't empty, 
    fprintf('This is not empty!\n') % then print "this is not empty"
else % otherwise, 
    fprintf('This IS empty.\n') % Print "this IS empty"
end
    
%% 
% For this homework, create a matlab file (.m) called LASTNAME_worksheet4 in your personal folder in the
% comppedagogy repo. (You can use the file you've been working on, that you created with cmd + n.) 

% ***
% Homework item 2: 
% 
% Write an if statement that will: 
% a. Check if a variable is empty
% b. If it is, assign it a numeric value
% c. Do nothing if not 
% ***

% ***
% Homework item 3: 
% 
% Write an if statement that will: 
% a. Check if a variable is 'SMAC'. If so, print 'Your PI is Prof. Ben Parrell'
% b. If not, check if that variable is 'BLAB'. If so, print 'Your PI is Prof. Carrie Niziolek'
% c. If not, print 'Oh no! You have no PI'
% 
% NB: to print something, use the fprintf statements from above. If you need help, remember you can always
% do the command: 
% doc fprintf
% ***






