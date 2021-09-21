%% HW 1. 
%argument 2
[1 3 5 7]
[3:5]
randi(50, 1, 6)

%arg 3
'signalIn'
'signalOut'

% A Boolean variable (binary logical)

%% HW2

audioGUI(cd, [1 2 3 4], 'signalIn', [], 0)

%% HW3
%a.
%2nd arg specifies trials

%b.
waverunner(pwd,[1 4 6])

%c.
%lpc, framespecs

%% HW 4
%a. these variables are being assigned (or set) to specific values
%b. category of trial errors from check_dataVals

%c.
if i 
    trial = 1; 
elseif dataVals(i).dur < shortThresh %check for too short trials: trial is too short if dur is less than shortThresh
        shortTrials = [shortTrials dataVals(i).token]; % if too short, add that index to the already existing vector of short indices
elseif dataVals(i).dur > longThresh %check for too long trials: trial is too long if dur is more than longThresh
        longTrials = [longTrials dataVals(i).token]; % iff too long, add that index to the already existing vector of long indices
end

%d. These are just educated guesses that function is able to make based on
%pre-determined rules of thumb made by the creators. This marks potential
%problem trials, and allows humans to go in and make the final call on
%whether or not the trial should be changed or removed