function [] = basic_howManyDaysLeft(currentDate)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Toy function to illustrate path properties on Matlab
% 
% Prints how many days there are left until the next BASIC meeting. If not provided with a date to start from, assumes
% current date/time. 
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dbstop if error
if nargin < 1 || isempty(currentDate), currentDate = datetime; end
%%
matlabBasicDate(1) = datetime(2020,3,25,11,0,0); % March 25, 2020
matlabBasicDate(2) = datetime(2020,4,8,11,0,0); % April 8, 2020
matlabBasicDate(3) = datetime(2020,4,22,11,0,0); % April 22, 2020

% Figure out time to next BASIC meeting for each date ... I could probably do this with a while statement but this logic is
% easier for me right now
for d = 1:length(matlabBasicDate)
    timeLeft = matlabBasicDate(d) - currentDate; 
    
    if timeLeft > 0 % If there is positive time left, then break into days/hours/minutes/seconds
        timeLeft = days(timeLeft); 

        daysLeft = floor(timeLeft); 
        hoursLeft = (timeLeft - daysLeft)*24; 
        minutesLeft = (hoursLeft - floor(hoursLeft))*60; 
        secondsLeft = (minutesLeft - floor(minutesLeft))*60; 
        
        % Whole values only please 
        hoursLeft = floor(hoursLeft); 
        minutesLeft = floor(minutesLeft); 
        secondsLeft = floor(secondsLeft); 
        fprintf('The next BASIC meeting is in %d days, %d hours, %d minutes, and %d seconds\n',daysLeft, hoursLeft, minutesLeft, secondsLeft); 
        break; 
    elseif timeLeft == 0 % If the meeting is happening RIGHT NOW 
        fprintf('A BASIC meeting is starting RIGHT NOW!!!\n'); 
        break;        
        
    else % If you are negative (past the current meeting) 
        if d == 3 % If the current meeting is meeting 3 
            fprintf('All BASIC meetings have already happened :(\n')
        end
        continue; 
        
        
    end
    
    
    
end




end