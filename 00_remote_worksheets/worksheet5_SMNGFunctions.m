%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 5: SMNG functions
% 
% - Skills introduced: 
% --- Documentation of code
% --- Optional arguments
% --- audioGUI inputs
% --- waverunner inputs 
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% We hope you enjoyed or at least have tolerated BASIC training (hyork
% hyork) until now. At this point we're going to start getting into how all
% of that fits into what you do at SMNG!

%% 1. Documentation
% So by now you've seen lots of these green comments that are introduced by
% a % sign.
% Sometimes you see an entire line of green, but other times you might see
% them right after a line of code:

myInvariable = 'wash for this many seconds';
thismanyseconds = 20;
if ~isempty(myInvariable)
    sprintf('%s: %d', myInvariable, thismanyseconds) % the %s and %d refer to the variables that follow the final apostrophe.
end

% That comment after the sprintf statement gives a little explanation to
% the person reading the code. This is particularly useful if code is very
% long, does something complicated, or uses some uncommon or custom
% function. It means that the person (e.g. future you) reading the code
% doesn't have have to work very hard to remember a lot of information.

% Can you think of a time when you wish you'd written yourself a note about
% how something worked?

%% Optional arguments
% In previous worksheets, we saw optional output arguments: if a function
% out put two arguments, eg
someMatrix = [1 2 3; 4 5 6];
[rows, columns] = size(someMatrix)
% but maybe you're only interested in the columns, you could substitute ~
% for rows so that variable doesn't get assigned. 
clear rows
[~, columns] = size(someMatrix) % we only care about columns.

% Similarly, functions can also be written to have optional input
% arguments. 

% Can you think of a function we use in the lab where you can optionally
% put something in parentheses?
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%% audioGUI
% That's right, audioGUI! If you've ever run audioGUI over only a certain
% set of trials, then you have provided an optional argument. If you just
% typed audioGUI at the command line, it would ask you which trial to start
% on and would by default run over all trials. 
% Oh hey, that word default. How do you define default behavior for a
% function? Let's open up audioGUI to find out:
open audioGUI.m

% Ok, there's a lot going on in there. Let's just look at the start.

function [] = audioGUI(dataPath,trialnums,buffertype,figpos,bSaveCheck)

% The parts in parentheses tell you the arguments that the function expects
% you to give it and the order in which it expects to find them. Remember,
% the function itself doesn't actually have knowledge of what a dataPath
% is, or what a buffertype is. The information you put in will be used at
% some point in the function. If you put the arguments in the wrong order,
% you'll get some kind of wild error eventually. For example, pretend you
% swap dataPath and trialnums. If you gave:
audioGUI([1 2 3 4 5], '/myfavexptobviouslyuhdapter/acousticdata/spxxx', 'signalIn', [0 0 0 0], 1)

% Then audioGUI would think that [1 2 3 4 5] was a dataPath. 
% line 22 says:
load(fullfile(dataPath,'data.mat'),'data');

% So then audioGUI would try to load '[1 2 3 4 5]/data.mat' which doesn't
% really make any sense, does it. Ok, so order matters.

% 

% See that "nargin"? That's Number of ARGuments IN. 
% Let's look at the first statement:
% if nargin < 1 || isempty(dataPath), dataPath = cd; end
% We can also write that with more familiar syntax:
if nargin < 1 || isempty(dataPath) % The || just means "or," i.e. if either of these things is true
dataPath = cd;
end
% If you were to run the above at the command line, why would you get an
% error?
% Let's look at the rest of the audioGUI argments:

if nargin < 2, trialnums = []; end % this is a vector of trialnumbers.
if nargin < 3 || isempty(buffertype), buffertype = 'signalIn'; end % This is the "signal" (sound) you want audioGUI to analyze. Have you ever done something other than signalIn?
if nargin < 4, figpos = []; end % This is just where you want the audioGUI window to appear on the screen. You can look into how Matlab positions windows if you like.
if nargin < 5, bSaveCheck = 1; end % You know how when you track a trial you've already tracked and it asks you if you want to overwrite a trial? That's this variable.

%% Homework 1: 
% For each of the arguments 2 and 3 list some possible input that you
% might feed to audioGUI instead of the default. 
% For number 5, what do we call that type of variable again? starts with a b?

%%
% A final note about optional inputs:
% How can an argument be empty?
% Consider this: audioGUI expects five arguments in. The inside of the
% script gives instructions about what to assume about the inputs if there
% are fewer than five of them.

% Suppose you want the default value for the fouth argument
% (position) but you want bSaveCheck to be equal to 0.

% if you gave some kind of input like:
% audioGUI(cd, [1 2 3 4], 'signalIn', 0)
% Consider this:
% Would that successfully set bSaveCheck equal to zero? why or why not?
%
%
%
%
%
%
%
%
%
%
% That's right, it would not. If you only gave four arguments, that would
% fall under contingency if nargin<5 (then set bSaveCheck equal to 1). That
% is, the function can't be inside your head and know which argument you're
% leaving out! You can use empty square brackets [] to indicate an empty
% argument.

%% Homework 2
% revise the audioGUI statement (reprinted below) to indicate an
% empty fourth argument.

% audioGUI(cd, [1 2 3 4], 'signalIn', 0)




%% waverunner
% Let's set audioGUI aside for a moment. Open up waverunner:
open waverunner.m
% Does the input argument structure look familiar? Yes, yes it does.

% As we've seen, an argument can be any variable type! It could be a
% double, an array of numbers, a string, a cell array...
% params2overwrite is a cell array of parameters. Waverunner overwrites
% parameters in a set of trials that you can specify. That list of
% parameters includes amplitude threshold and preemphasis. This is useful
% if, say, you want to make the amplitude threshold 0 on all trials but
% don't want to open them up one by one in audioGUI.


% Homework 3
% a. which argument of waverunner specifies trials?
% b. write an example of a waverunner call that only overwrites trials 1,
% 4, and 6, with default arguments for bufferType, bSaveCheck and
% params2overwrite.
% c. Can you think of another parameter (other htan amplitude threshold or
% preemphasis that you alter in audioGUI that you could overwrite using
% waverunner?

%% check_dataVals
% How does check_dataVals choose trials for your to re-check? Does it know
% there's something wrong with those trials? 
% Let's open it up. There will be a lot of extra syntax and functions defined 
% inside it that you don't need to worry about. We'll ignore it. Just
% scroll down to line 137.

% Homework 4
% a. Not a trick question: what are lines 138-141 doing? They are setting
% words equal to particular values. What do we call this? i.e., what do we
% call shortThresh, longThresh, jumpThresh, and wrongFThresh?
% b. Do you recognize the words in lines 142-151?? From where?!

% We haven't done for-loops yet, so I'll do a line-by line translation of
% the following (next few lines):

%     for i = 1:length(dataVals)
%         if dataVals(i).bExcl
%             badTrials = [badTrials dataVals(i).token];

%     for i = 1:length(dataVals)
% % % We're going to get information from all of the rows in dataVals.
%         if dataVals(i).bExcl
% % % % % Ooo, remember what the b is? Boolean! so, if the line of the trial
% % % % % that we're currently looking at is a trial marked as "bad" (eg during
% % % % % audioGUI or checkAudio) [literally, if the variable bExcl exists 
% % % % % for this trial)
%             badTrials = [badTrials dataVals(i).token];
% % % % % % % Then take that trial and add it to my list of bad trials.

% c. Can you write a similar translation for lines 157-160?

% d. Given all of this, how does check_dataVals figure out which trials to
% check? That is, is there some kind of complex signal processing or neural
% network that determines the trials to check, or is it an educated guess,
% and where would that guess come from? Explain.
