%#1
%Line 118 is a for statement and it is making sure that the first trial
%through the last trial are considered good trials as indicated by the
%boolean statement underneath. 

%#2
%The experiment knows when to give the participant a break because of the
%else if statement within the if statement. The if statement first checks
%if the trial is within the set number of trials for the experiment. If it
%is not it goes to the second condition which is the else if statement. This
%says if the trial is not a part of the set number of trials for the
%experiment it is time for a break. 

#####
% RK 10/14: Not quite, try going through line by line and thinking about what each variable is
% MB 10/28: I met with Ben about the code so I think I understand it more now. So the break trials are predetermined by us so once the code hits a trial number that is a break trial, the participant will get a break. 
%#3
%The experiment knows what words to display on the screen because expt is a cell
%array with a string of words indicated by the curly brackets with all the
%words from the first to last trial. 

%#4
%The purpose of this script is to show you all of the parameters that have
%to be set to run an experiment and then run audapter. There are many cell arrays with
%information about the experiment which becomes inputs to audapter. 

#####
% RK 10/14: Reading the script tells you all the parameters that have to be set, but what does the script
% itself do? (hint: what is the output of the script, and what gets called at the very end of the script?)
% MB 10/28: It calls on the sister function, adapter.

%#5
%A)You would include the noise vector in the expt script and then when it
%calls on audapter it will transport into that script??
%B)noise2play = noiseLevels(noisevector);

#####
% RK 10/14: Try again! Try thinking about the structure of the word information and how words are selected to
% be displayed
% MB 10/28: You would write a variable that determines the noise level for each trial?
