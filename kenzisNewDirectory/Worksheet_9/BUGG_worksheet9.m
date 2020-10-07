%#1

fprintf('1 little piggy\n')
while (i < 10)
    i = i + 1
    fprintf('%d little piggies\n',i)
end

%#2

aNumber = 0;
count = 0; 
while round(aNumber) < 101
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
    end
end
fprintf('This while loop ran %d time(s)\n',count); 