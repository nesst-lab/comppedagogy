%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 9: while loops
% 
% - Skills introduced: 
% --- While loops vs. for loops
% --- Infinite loops and break
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
% Homework item 1: rewrite the little piggies loop as a while loop. 
% 
% *** 

%% Infinite loops and break 

% 1. Unlike for loops, while loops have the potential to run infinitely ("an infinite loop"). Sometimes, this
% can be due to code error, such as making it impossible for the condition to ever be met. For example, if you
% were to run the following code, it would run infinitely. (If you do run the following code, wait a few
% seconds and then hit ctrl+c before your computer hates you!! This is a
% force quit command.)

aNumber = 0;
count = 0; 
while round(aNumber) < 1 
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
end
fprintf('This while loop ran %d time(s)\n',count); 

% I've let this run for ~5 seconds, and then force quit it because obviously it is not going to work. After
% force quitting, count == 151529277, meaning that this loop ran 151,529,277 times before I forced Matlab to
% give up. 

% 2. Usually you DON'T want an infinte loop---in this case, the loop is infinite because I did my math wrong
% and made the condition absolutely impossible to meet. However, it's possible that a condition just might not
% ever be satisfied due to bad luck. One place where we use while loops in the lab is when determining whether
% or not we should continue in an experiment. The skeleton of the while loop for a single trial is below (this
% code will not run by itself, so this is for educational purposes only) 

% This while loop is embedded in a for loop, which has information about the set of trials that is supposed to
% be run; the while loop just runs a single trial. 

bGoodTrial = 0; % this isn't a good trial yet 
repeatTrial = 0; % how many times have you repeated this trial? 
while ~bGoodTrial
    % check if good trial
    bGoodTrial = check_rmsThresh(data,rmsThresh,h_sub(3)); % This checks if the participant spoke loudly enough

    if bGoodTrial % if the trial WAS loud enough, 
        % Display PCF status to controller. Only want to do this if they actually talked/etc. 
        [trigSummary,~,warpSummary,~,~] = timeAdapt_pcfAnalysis(dummyWord,pcfWorking,data.ost_stat);            

        if strcmp(trigSummary,'No trigger') % If the OST trigger didn't happen, 
            bGoodTrial = 0; % Change back to being a bad trial 
            repeatTrial = repeatTrial + 1; % and increment the number of times you've repeated
        end

    elseif ~bGoodTrial % If it wasn't loud enough
        % Tell the participant to talk louder, and take a one-second pause
        h_text = draw_exptText(h_fig,.5,.2,'Please speak a little louder','FontSize',40,'HorizontalAlignment','center','Color','y');
        pause(1)
        repeatTrial = repeatTrial + 1; % and increment the number of times you've repeated
    end

% So far, this is a very normal while loop: it keps repeating a single trial until the person talks loud
% enough, and also produces a segment that triggers the right OST status. But what happens if that never
% happens? Do you want to just keep repeating the trial forever and ever? The answer to that is NO! 

% There are two ways to do this:    
    if repeatTrial > 2 % If you've repeated this trial more than twice, either
        bGoodTrial = 1; % hard set bGoodTrial as 1, so the loop will be satisfied, OR 
        break % just code in a "break": this will break you out of the loop. 
    end
end

% 3. So we can code in this "break" into our BAD, actually infinite loop from above: 
aNumber = 0;
count = 0; 
while round(aNumber) < 1 
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
    if count > 100
        break
    end
end
fprintf('This while loop ran %d time(s)\n',count); 

% Now any time you run this loop, it will ALWAYS tell you that it ran 101 times (compare to our well-coded
% loop, which varied based on how long it took rand to get a number above 0.5). 

% *** 
% Homework item 2: recode the infinite while loop to end after the 101st iteration WITHOUT using a break
% statement. 
% *** 

% *** 
% Homework item 3: now do it a second way! (One of the ways will involve an if statement; the other will
% involve changing the condition of the while statement itself. If you haven't done worksheet 4s yet, it will
% help to take a look)
% ***






