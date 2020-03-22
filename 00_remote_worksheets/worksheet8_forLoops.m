%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SMNG's BASIC (BLAB And SMAC Intro to Computing) series
% Remote BASIC series 
% Worksheet 8: For loops
% 
% - Skills introduced: 
% --- Other ways of defining vectors in Matlab
% --- For loops
% --- Toy for loop with sample Audapter data 
%
% Presented by Sarah Bakst and Robin Karlin
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% 3. Okay, now say we have a cell variable: 
homeState = {'WI' 'CA' 'WI' 'MN'}; 

% This is the home state of each person we have in our structure array, and we can add this information to the
% structure array. Basically, what we want to do is to create a new field: 
[smngLabMembers.homeState] = homeState{:}; 

% Okay okay, that was kind of confusing. What's with the brackets?? Well, on the right side of the =, you
% already know about the {:} notation (from worksheet 6). Let's take a look at what the result of just the
% right side is: 
homeState{:} 

% This should give you four answers, all in succession. Compare that to just homeState alone:
homeState

% That gives you one answer: the whole cell array. Okay, so now let's look at the left side: 
