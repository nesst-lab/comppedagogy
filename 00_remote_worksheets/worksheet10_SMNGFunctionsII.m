%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 10: SMNG functions part II 
% 
% - Skills introduced: 
% --- Why loops?
% --- For loops
% --- Froot loops
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

% ***
% Before starting this worksheet, use Terminal (/git bash) to create a new directory called Worksheet_8 in your personal
% directory inside comppedagogy. 
%
% BONUS: you'll need a LASTNAME_worksheet10.m file for this worksheet as well. Create this either via Matlab or
% via the command line. 
% 
% *** 

%% Why loops?

% 1. One of the things that programming is really good for is doing repetitive, predictable things that would
% be super boring for you to do yourself. For example, imagine you had to
% change the extension on a bunch of old Word files from .doc to .docx.
% That would be SO. BORING. Plus what if you messed one up?

% 2. Or can you imagine having to tell the computer the parameters for a
% trial on every single trial? Like, "shift F1"?

% 3. Open up run_modelExpt_audapter.m. It's located in
% the free-speech repository (you can clone it on your home computer: https://github.com/carrien/free-speech).
% free-speech/templates/modelExpt
% If you want, you can add that templates folder to your Matlab path: Click
% on the "home" tab, then click the Set Path button (indicated by two
% folder icons). Add the templates folder, save, and exit. By adding the
% templates folder to your path, you'll be able to open that file without
% actually being in the templates folder.


%% HW Question 1
% What is happening in line 118 (for itrial = firstTrial:lastTrial) ?

%% HW Question 2
% Look at the 'if' statement in lines 210-219. How does the
% experiment "know" when to give participants a break? 

%% HW Question 3
% How does the experiment "know" what word to display (line 135)? Hint:
% what kind of object is expt? What kind of object/data type is expt.listWords? How
% can you tell, given the notation on line 135?

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
% b. How would the experiment "know" which noise level to play on a given
% trial, noise2play? Your answer should be stated as an equation:
noise2play = % Your answer here, minus the percent sign.
% Hint: look at the lines in run_modelExpt_audapter that set, e.g., the
% text or color to display.