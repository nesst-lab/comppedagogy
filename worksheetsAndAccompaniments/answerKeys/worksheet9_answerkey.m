%% Homework 9 answer key

%%
% *** 
% Homework item 1: rewrite the little piggies loop as a while loop. 
% 
% *** 

fprintf('1 little piggy\n')
for i = 2:10
    fprintf('%d little piggies\n',i)
end

% Changes to

fprintf('1 little piggy\n')
i = 2; 
while i <= 10
   fprintf('%d little piggies\n',i)
   i = i+1; 
    
end
% There are a couple of ways to do this so if you have something different it isn't necessarily wrong---just
% run your code to make sure it does the thing you want!

%%
% *** 
% Homework item 2: recode the infinite while loop to end after the 101st iteration WITHOUT using a break
% statement. 
% *** 

%
% *** 
% Homework item 3: now do it a second way! (One of the ways will involve an if statement; the other will
% involve changing the condition of the while statement itself. If you haven't done worksheet 4s yet, it will
% help to take a look)
% ***

aNumber = 0;
count = 0; 
while round(aNumber) < 1 && count < 101 % multiple conditions: count has to be below 101 to keep going 
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
end
fprintf('This while loop ran %d time(s)\n',count); 

% OR

aNumber = 0;
count = 0; 
while round(aNumber) < 1 
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
    if count > 100
        aNumber = 1; % just hard set aNumber to be 1 so it'll round and end
    end
end
fprintf('This while loop ran %d time(s)\n',count); 




