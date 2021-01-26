Homework
1) % for Arguemnt 2 I could include a vecter [ 4,5,7,8]
 % for arguement 3 you could have signal out
 % #5)I don't remember what we called them in lab but I did some research
 % and they are for Boolean
  % Would that successfully set bSaveCheck equal to zero? why or why not?
  % Answer: t shouldn't, bucause  we didn't write a command for it, 
 % we stopped after the 4th nargin
 
 2) audioGUI(cd, [1 2 3 4], signalIn, ,) 
 3) 
 %a. arguement 2 specififes trials 
 %b. function [] = waverunner(dataPath,[1,4,6} ,,,)
% c. you can overwrite the formants (the blue and red lines)  

4) % a, checking for errors?
% b) There are want we check at the end of data analysis in lab 
% c)    elseif dataVals(i).dur < shortThresh %check for too short trials
            shortTrials = [shortTrials dataVals(i).token];
        elseif dataVals(i).dur > longThresh %check for too long trials
            longTrials = [longTrials dataVals(i).token];
            
   % translation - If the variable .dur exists for this trial add it to the
   % my list of short trials. If that variable .dur exists for this trial
   % when checking for longTresh, add it to long trials. 

 


 
 