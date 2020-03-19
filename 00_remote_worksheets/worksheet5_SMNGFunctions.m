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

% Ok, there's a lot going on in there. Let's just look at the start. See
% that "nargin"? That's Number of ARGuments IN. 
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

% Homework 1: 
% For each of the arguments 2 and 3 list some possible input that you
% might feed to audioGUI instead of the default. 
% For number 5, what do we call that type of variable again? with the b?


%% waverunner
% Let's set audioGUI aside for a moment. Open up waverunner:
open waverunner.m
% Does the input argument structure look familiar?
