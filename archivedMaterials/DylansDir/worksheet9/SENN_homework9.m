%homework item 1
loops = 0; % RK: the way you've set this up prints 1 little piggy and then 1 little piggies
fprintf('1 little piggy\n');
while (loops < 10)
    loops = loops + 1; 
    fprintf('%d little piggies\n',loops);
end 

%homework item 2
aNumber = 0;
count = 0; 
while count < 101 % RK: This isn't the same loop (it still needs to be evaluating round(aNumber). See suggestion to see worksheet 4s. 
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
end
fprintf('This while loop ran %d time(s)\n',count); 

%Homework item 3
aNumber = 0;
count = 0; 
while round(aNumber) < 1 
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
    if count > 100
        aNumber = 1; 
    end
end
fprintf('This while loop ran %d time(s)\n',count); 