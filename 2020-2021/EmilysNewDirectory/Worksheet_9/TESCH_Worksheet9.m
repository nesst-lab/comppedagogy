fprintf('1 little piggy\n');
while i <= 10
    fprintf('%d little piggies\n',i)
    i = i+1;
end %homework item 1
aNumber =0;
count=0;
while count < 101 && round(aNumber) <1
    aNumber = -rand;
    count = count+1;
end
fprintf('This while loop ran %d time(s)\n', count);%homework item 2
while round(aNumber) <1
    aNumber = -rand;
    count = count+1;
    if count > 101
        aNumber=1;
    end
end
fprintf('This while loop ran %d time(s)\n', count);%homework item 3

