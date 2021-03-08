%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 1s: finding things in Matlab
% 
% - Skills introduced: 
% --- edit/open
% --- which (and options); find files  
% --- doc/help 
% 
% bRemote = 0; % For this worksheet, you do NOT need to be remoted into a SMNG computer. 
%
% Presented by Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Reminder to use good Gitiquette!! 
% 1. Pull before pushing
% 2. Don't delete anything that belongs to someone else. 
% 3. Don't change the worksheet! 

%% Edit/open

% 1. Sometimes in these worksheets we will ask you to open up a Matlab file. Usually we will provide you with
% the command, but it is actually super easy! There are basically two options: 

open basic_howManyDaysLeft
edit basic_pythagTripleFunction

% Note that you don't actually need the file extension. 

% edit for files, open for everything 
% open with arguments (can't do with edit)

%% Which

% 1. Normally if you are trying to open or edit a script, you can just use the edit/open functions as above
% and not have to know where that file is located. However, someday you may find yourself wanting to know what
% the exact filepath is to aparticular script/function. For example, say that you know that someone pushed an
% updated version of some script to one of the lab git repositories, and you would like to pull it down. But
% we have a lot of repositories! How can you find out if something is in the free-speech repository or the
% comppedagogy repository or the current-studies repository? Use which! 

which worksheet1s_findingThingsInMatlab

% Much like edit/open, you can simply use a space between the command and the argument. This will print out
% the information you want to the command window. Alternatively, you can assign a variable: 

whereIsMyFile = which('worksheet1s_findingThingsInMatlab'); 

% 2. 

% masking/multiple versions
% oh no an error! but... you were just working on that script and you were testing it and it worked fine! Why
% is it still erroring? 
% Check to make sure that the function call is actually calling the version you are working on

% isfile masking when remoting in and using matlab 