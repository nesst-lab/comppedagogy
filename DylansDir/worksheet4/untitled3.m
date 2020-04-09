% Here, we are making a variable named workingDir that has the value that the command pwd returns. 
workingDir = pwd

% 3. You can make other variables that are set based on variables that already exist. So we can make a variable called
% oldWorkingDir, which is set as whatever workingDir is right now: 
oldWorkingDir = workingDir

% We can also change existing variables to be something else simply by redefining them. First, navigate to a directory other
% than the one where you were when you first defined workingDir. Then run the line (be sure to highlight the whole line,
% including the semicolon, before you either hit F9 or copy/paste) 
workingDir = pwd
