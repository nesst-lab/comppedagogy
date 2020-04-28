%% JOHNSON_homework5

%% Item 1:
% For argument 2, you could enter a number in between 1 and the total
% number of trials, and audioGUI would take you to that trial number. For
% argument 3, you could enter either 'signalIn' or 'signalOut' and then
% analyze the respective signals.
% 
%For argument 5, that is a boolean variable.
%% Item 2:
% audioGUI(cd, [1 2 3 4], 'signalIn',[], 0)
%% Item 3: 
% a.The second argument of waverunner specifies trials, called trialinds.
% b.waverunner(dataPath,[1 4 6])
% c.Besides the amplitude threshold or preempahsis, you could alter the lpc order.
%% Item 4:
% a.Lines 138-141 are setting the thresholds for errors. The words are
% variables and the variables are set to scalars. 
% b.The words are from the check_dataVals screen; they are the possible
% errors we need to check before we can finish the data analysis.
%
% c.     elseif dataVals(i).dur < shortThresh %check for too short trials
%if the dataVal has a shorter duration than the shortThresh variable, it is
%set into a shortTrials category
            %shortTrials = [shortTrials dataVals(i).token];
        %elseif dataVals(i).dur > longThresh %check for too long trials
%if the dataVal has a longer duration than the longThresh variable, it is
%set into a longTrials category
% RK: "the data Val" is put in that category? What particular aspect of the dataVal? 
            %longTrials = [longTrials dataVals(i).token];
            
% d.The check_dataVals function figures out which trials to check by
% comparing all of the dataVals to preset values, and it they fall out of
% the normal range, then they are categorized into different check
% categories. It seems to be an educated guess, based on the normal range
% of values from participants because the dataVals are compared to set
% values and there doesn't seem to be any more complex calculations.

