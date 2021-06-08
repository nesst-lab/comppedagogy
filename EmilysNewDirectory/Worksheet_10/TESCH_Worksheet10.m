%homework quesiton 1: This line is saying that the for loop should run over the first to the last trial
%homework question 2: This if statement is saying that if it isn't a
%bGoodTrial or if p is pressed then it will pause to give the participant a
%break
%homework question 3: there is a list of words in expt.listWords that the
%program is pulling from and the expt is a structure with the list in a
%cell because its in {}.
%homework question 4: the run_modelExpt_expt script is to fill in the
%information for the variables used in the input arguments in the audapter
%version. This has all of the information about each participant and all of
%the words and parameters that get used in the audapter script.
%homework question 5: a) you could lines to run noise2play that pulls from
%the noisevector 
expt.listNoise = listNoise;
noise2play = expt.listNoise{itrial};