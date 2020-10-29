%% Homework 1: 
% For each of the arguments 2 and 3 list some possible input that you
% might feed to audioGUI instead of the default. 
% For number 5, what do we call that type of variable again? starts with a b?

% argument 2: 
[1:150] 
[1 3 8 94] 
[3] 

% argument 3: 
'signalOut' 
'signalIn' % though this is the default. can always be very explicit! 

% b variables are booleans (logicals) 

%% Homework 2
% revise the audioGUI statement (reprinted below) to indicate an
% empty fourth argument.

% audioGUI(cd, [1 2 3 4], 'signalIn', 0)
audioGUI(cd,[1 2 3 4], 'signalIn', [], 0); 

%% Homework 3
% a. which argument of waverunner specifies trials?
% argument 2

% b. write an example of a waverunner call that only overwrites trials 1,
% 4, and 6, with default arguments for bufferType, bSaveCheck and
% params2overwrite.
waverunner(pwd,[1 4 6]); 
% I didn't make the dataPath default because you didn't include it, but this is essentially default anyway

% c. Can you think of another parameter (other than amplitude threshold or
% preemphasis) that you alter in audioGUI that you could overwrite using
% waverunner?
% nlpc is frequently used, e.g. 
waverunner([],[],'signalOut',0,{'nlpc','ampl_thresh4voicing','preemph','ms_framespec_form'})
% from the last time I ran waverunner! 

%% Homework 4
% a. Not a trick question: what are lines 138-141 doing? They are setting
% words equal to particular values. What do we call this? i.e., what do we
% call shortThresh, longThresh, jumpThresh, and wrongFThresh, and what do 
% we call it (in computery land) when we make one of those terms be a value? (This is a review question.)

% We're setting these variables to these particular variables (initiating and setting) 

% b. Do you recognize the words in lines 142-151?? From where?!
% These are the types of bad trials we might see on the left side of the check_dataVals GUI!

% c. Can you write a similar translation for lines 157-160?

if i %adding this to be less annoyed by the red lines XD 
    trial = 1; 
elseif dataVals(i).dur < shortThresh %check for too short trials: trial is too short if dur is less than shortThresh
        shortTrials = [shortTrials dataVals(i).token]; % if too short, add that index to the already existing vector of short indices
elseif dataVals(i).dur > longThresh %check for too long trials: trial is too long if dur is more than longThresh
        longTrials = [longTrials dataVals(i).token]; % iff too long, add that index to the already existing vector of long indices
end

% d. Given all of this, how does check_dataVals figure out which trials to
% check? That is, is there some kind of complex signal processing or neural
% network that determines the trials to check, or is it an educated guess,
% and where would that guess come from? Explain.

% It's just an educated guess, which is why we need humans to go over stuff! It basically compares the formant
% tracks to these particular values that we've set: is the formant track longer than we marked the vowel as?
% Is it longer? Is there an NaN in there? Did it jump too far from one sample to the next? These criteria can
% mark out potential problems and flag them for review later. 


