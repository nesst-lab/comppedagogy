%% HW 1.
i = 1
while i <= 10
    fprintf('%d little piggies\n', i)
    i = i + 1;
end

%% HW 2. 
while round(aNumber) < 1 
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
    if count > 100
        aNumber = 1
    end
end

%% HW 3. 
while round(aNumber) < 1 & count < 10q
    aNumber = -rand; % aNumber will now always be NEGATIVE meaning it will always round to a value less than 1!    
    count = count + 1; 
end
