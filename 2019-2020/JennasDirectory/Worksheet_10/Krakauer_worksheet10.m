1. for itrial = firstTrial:lastTrial % this creates a matrix of numbers from fristTrial to lastTrial that is set to the variable, itrial.

2. Participants get a break if any of the break trials (expt.breakTrials) are the same value as itrial (whatever trial they are currently on). First, though, it makes sure the trial they are on is not the last trial with if itrial == expt.ntrials.

3. expt is a structure which contains expt.listWords, the list of words used in this experiment. It is a cell, which you can tell from the bracket {}.

4. expt is for setting up the parameters of the experiment.

5a. expt.listNoise = listNoise;

5b. noise2play = expt.listNoise{itrial};
