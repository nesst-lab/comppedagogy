%Homework Item 1:
fprintf('1 little piggy\n')
i = 2;
while i <=10
    fprintf('%d little piggies\n',i)
    i = i+1;
end

%Homework Item 2:

aNumber = 0;
count = 0;
while round(aNumber) < 1 && count < 101
    aNumber = -rand;
    count = count + 1;
end
fprintf('This ran %d times\n')

%Homework Item 3
aNumber = 0;
count = 0;
while round(aNumber) < 1
    aNumber = -rand
    if count > 100
        aNumber +1;
    end
end
fprintf('This ran %d times\n')
