%% Worksheet 10 answer key


%% HW Question 1
% What is happening in line 118 (for itrial = firstTrial:lastTrial) ?
This is a for loop: a set of functions is executed for every trial between the first and final trials.

%% HW Question 2
% Look at the 'if' statement in lines 210-219. How does the
% experiment "know" when to give participants a break? 

If the current trial (itrial) is equal to a predetermined trial with a break.

%% HW Question 3
% How does the experiment "know" what word to display (line 135)? Hint:
% what kind of object is expt? What kind of object/data type is expt.listWords? How
% can you tell, given the notation on line 135?

There's a predetermined list containing all the words, and this is a list in expt. expt is a struct (structure).
This list is a cell, and you can tell from the brace notation.

%%
% 4. Now open run_modelExpt_expt.m (same folder as run_modelExpt_audapter.m).

% 5. Scroll down to the bottom of the script. What do you see in the last
% text-containing line before the "end"?
% .
% .
% .
% .
% .
% .
% .
% .
% That's right! run_modelExpt_audapter! The run_modelExpt_expt function
% *calls* the run_modelExpt_audapter function.

%% HW Question 4
% Read the section titled "Set other expt values". What is the purpose of
% the run_modelExpt_expt script? Hint: what are the input arguments to
% run_modelExpt_audpater? Second hint: this is related to HW question 3.

The run_modelExpt_expt creates the expt structure and gives that information to the run_modelExpt_audapter file to run.

%% HW Question 5
% Suppose you are running an experiment that plays a different noise level
% on each trial randomly: softNoise and loudNoise. This experiment has 20 trials.
% Run the following code in the command window to create a list (listNoise) the
% length of the experiment with a noise value for each trial:
ntrials = 20;
noiseLevels = {'softNoise' 'loudNoise'};
noisevector = repmat(1:length(noiseLevels),1,ntrials/length(noiseLevels)); %repmat REPeats a MATrix
listNoise = noiseLevels(noisevector);
% a. How would you get your listNoise vector to be transported into the
% run_modelExpt_audpater script without adding a new argument? Hint:
% listNoise is NOT a cond2run.

% b. Suppose the noise level were picked How would the experiment "know" which noise level to play on a given
% trial (itrial), noise2play? Your answer should be stated as an equation:
noise2play = % Your answer here, minus the percent sign.
% Hint: look at the lines in run_modelExpt_audapter that set, e.g., the
% text or color to display.

a. expt.listNoise = listNoise;
b. noise2play = expt.listNoise{itrial}