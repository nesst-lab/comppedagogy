%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 9: while loops
% 
% - Skills introduced: 
% --- While loops vs. for loops
% --- Infinite loops and break
% --- While loops
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_9 in your personal
% directory inside comppedagogy. 
%
% You'll need a LASTNAME_worksheet8.m file for this worksheet as well. Create this either via Matlab or
% via the command line. 
% 
% *** 

%% While loops vs. for loops

% 1. So far, we've been doing loops over known numbers of iterations: a number of trials, for example. That
% means that we can define a vector, and then run the loop over that vector. 

fprintf('1 little piggy\n')
for i = 2:10
    fprintf('%d little piggies\n',i)
end

% But what if we don't know how many times we want to repeat? What if we want something to keep going until
% something else happens?  Enter... the while loop! 

% 2. As with all statements like these, we have a while... end encasement. But instead of providing a vector,
% like we do for for loops, we provide a condition that has to be met. Basically, a while loop runs WHILE some
% condition holds. 

aNumber = 0; % first we want to initialize a variable that will factor into our condition
count = 0; % sometimes we want to count how many times you had to run through the loop
while round(aNumber) < 1 % our condition: rounding aNumber gives you a number less than 1
    aNumber = rand; % And now in the while loop, we make sure something happens to the conditioning variable    
    count = count + 1; % If we're counting, we need to increment every time this loop runs
end
fprintf('This while loop ran %d time(s)\n',count); 

% The goal of this while loop is to call rand (which gives you a [pseudo]-random number between 0 and 1) until
% the number it gives you rounds up to 1. This loop keeps track of how many times it needs to run before this
% happens by starting a "count" variable outside the loop, and incrementing it every time the code inside the 
% loop runs. 

% If you highlight the code snippet above and run it (hit F9) multiple times, you will get a different number
% of loop iterations---so far I've gotten 1 2 1 3 1. 

% *** 
% Homework item 1: 
% 
% *** 

%% Infinite loops and break 

% 1. Unlike for loops, while loops have the potential to run infinitely ("an infinite loop"). Sometimes, this
% can be due to code error, such as making it impossible for the condition to ever be met. For example: 

aNumber = 0;
count = 0; 
while round(aNumber) < 1 
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
end
fprintf('This while loop ran %d time(s)\n',count); 

% If you are running this code, hit ctrl+c (windows) or cmd+c (mac) before your computer hates you!! This is a
% force quit command. 

% I've let this run for ~5 seconds, and then force quit it because obviously it is not going to work. After
% force quitting, count == 151529277, meaning that this loop ran 151,529,277 times before I forced Matlab to
% give up. 






