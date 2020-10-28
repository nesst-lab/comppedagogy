%#1

fprintf('1 little piggy\n')
#####
% RK 10/14: What is i defined as? 
% MB 10/28: It should be defined as a vector like it is listed in the worksheet?
i = 2:10
while (i < 10)
    i = i + 1
    #####
    % RK 10/14: Depending on what you set i as, this will not print out what you want in different ways. Why?
% MB 10/28: I think I fixed it?
    fprintf('%d little piggies\n',i)
end

%#2

aNumber = 0;
count = 0; 
while round(aNumber) < 1 && count < 101
    #####
    % RK 10/14: is this actually the condition you meant to write? 
% MB 10/28: I think I fixed it because by using the && it keeps the count above 1 but below 101 because both expressions must be true for the function to continue. The way I wrote it the first time would allow the count to go negative?
    aNumber = -rand;    
    count = count + 1;
end
fprintf('This while loop ran %d time(s)\n',count);

%#3

aNumber = 0;
count = 0; 
while round(aNumber) < 1 
    aNumber = -rand;
    count = count + 1;
    if count > 101
        #####
        % RK 10/14: how does this break you out of the infinite loop? 
% MB 10/28: Because if the count goes over 101 it will end.
    end
end
fprintf('This while loop ran %d time(s)\n',count); 