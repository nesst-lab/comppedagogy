function levelNumber = basic_whichLevel
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BASIC function
% 
% Demonstrates effects of having multiple functions on the path with the same name. Gives back the "level" of
% the "which labyrinth" the particular function is located in. Top level (in master folder whichWhich) is
% simply 0, otherwise it is just the number after the "which" in the folder name. 
% 
% RPK 2020/11/05
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
whichFile = which('basic_whichLevel'); 
[whichPath, ~, ~] = fileparts(whichFile); 
pathLastChar = whichPath(end); 
pathLastNum = str2double(pathLastChar); 

if isnan(pathLastNum)
    levelNumber = 0; 
else
    levelNumber = pathLastNum; 
end

end