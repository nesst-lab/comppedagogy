% Homework Item 1:

fprintf('1 little piggy\n')
nPiggies = 2;
while nPiggies <= 10
    fprintf('%d little piggies\n', nPiggies)
    nPiggies = nPiggies + 1;
end

%Homework Item #2:
aNumber = 0;
count = 0;
while round(aNumber) < 1 
    aNumber = -rand;   
    count = count + 1; 
    if count > 100
        aNumber = 2;
    end
end


% Homework Item 9:
aNumber = 0;
count = 0;
while round(aNumber) < 1 & count < 101
    aNumber = -rand;
    count = count + 1;
end
