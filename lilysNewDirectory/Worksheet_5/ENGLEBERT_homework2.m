% homework item 1
% argument 2: any trial number such as [36:end]
% argument 3: 'signalOut'
% argument 5 is a boolean variable.

%homework 2
% audioGUI(cd, [1 2 3 4], 'signalIn', 0)
% revised to: 
audioGUI(cd, [1 2 3 4], 'signalIn',[], 0)

% Homework 3
% a. which argument of waverunner specifies trials?
    % argument 2
% b. write an example of a waverunner call that only overwrites trials 1,
% 4, and 6, with default arguments for bufferType, bSaveCheck and
% params2overwrite.
    waverunner(pwd, [1 4 6], 'signalIn', 1, [])
    waverunner(pwd, [1 4 6];)
% c. Can you think of another parameter (other than amplitude threshold or
% preemphasis) that you alter in audioGUI that you could overwrite using
% waverunner?
    % nlpc
    
    
    
 %homework 4
 %a. we call this variable assignment
 
 %b. these terms are the ones on the left side when we are doing
 %check_dataVals during final analysis
 
 %c.  if i %adding this to be less annoyed by the red lines---not originally part of the code! 
    trial = 1; 
elseif dataVals(i).dur < shortThresh %check if trials are too short
    % trial is too short if dur is less than shortThresh
        shortTrials = [shortTrials dataVals(i).token]; 
        % if trial is too short, add that index to the already existing vector of short indices
elseif dataVals(i).dur > longThresh %check if trials are too long: 
    % trial is too long if dur is more than longThresh
        longTrials = [longTrials dataVals(i).token]; 
        % if trial is too long, add that index to the already existing vector of long indices
        end

        
  %d. I think it's an educated guess based on the value assigned to dur.
  %When I have gone through trials that the computer marks as bad,
  %sometimes they end up being fine-- it's just trying to point out trials
  %that might look a little abnormal and need to be reviewed.

