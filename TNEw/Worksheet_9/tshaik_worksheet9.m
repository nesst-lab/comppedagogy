

% Homework1 
fprintf ('1 little piggy\n')
i = 2;
while i <= 10 
fprintf('%d little piggies\n',i)
i=i+1;
end 

% Homework 2
aNumber = 0;
count = 0;
while round(aNumber) < 1 && count < 101
    aNumber = -rand;
    count = count + 1;
end
fprintf('This while loop ran %d time(s)\n',count);

% Homework 3 
aNumber = 0;
count = 0;
while round(aNumber) < 1
    aNumber -rand;
    count = count + 1;
    if count > 100
        aNumber = 1
    end 
end 
fprintf('This while loop ran %d times(s)\n',count);