%Worksheet 10

%% HW Question 1
% What is happening in line 118 (for itrial = firstTrial:lastTrial) ?

    %this is telling the computer to look at all trials when running the
    %loop
    
%% HW Question 2
% Look at the 'if' statement in lines 210-219. How does the
% experiment "know" when to give participants a break? 

    %if the trial number that the participant is doing corresponds with a
    %trial that the experimenter previously decided to schedule a break.
    
%% HW Question 3
% How does the experiment "know" what word to display (line 135)? Hint:
% what kind of object is expt? What kind of object/data type is expt.listWords? How
% can you tell, given the notation on line 135?

    %there was a list of words made before the experiment that corresponds
    %to each trial. expt.listWords is a structure; we can tell because of
    %the {} notation.
    
%% HW Question 4
% Read the section titled "Set other expt values". What is the purpose of
% the run_modelExpt_expt script? Hint: what are the input arguments to
% run_modelExpt_audpater? Second hint: this is related to HW question 3.

    %The script outlines how the experiment should run.
    
    
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
% run_modelExpt_audpater script without adding a new argument? 
expt.listNoise= listNoise

% b. How would the experiment "know" which noise level to play on a given
% trial, noise2play? Your answer should be stated as an equation:
noise2play = expt.listNoise{itrial}
