%#1

fprintf('1 little piggy\n')
#####
% RK 10/14: What is i defined as? 
while (i < 10)
    i = i + 1
    #####
    % RK 10/14: Depending on what you set i as, this will not print out what you want in different ways. Why?
    fprintf('%d little piggies\n',i)
end

%#2

aNumber = 0;
count = 0; 
while round(aNumber) < 101
    #####
    % RK 10/14: is this actually the condition you meant to write? 
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
    end
end
fprintf('This while loop ran %d time(s)\n',count); 