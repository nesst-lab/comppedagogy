%% Homework_4s Item 1
function and_operator(a, b)

%This function takes an input of two variables or values and returns "hello
%world" if the both values are not empty, floats, and positive.

    if ~isempty(a) & ~isempty(b)
        if isfloat(a) & isfloat(b) 
            
            %I first tried isinteger() but this evaluated to 0 (false),
            % so I changed to the isfloat() function, and it evaluted to 1
            % (true) -- I am not sure why the isinteger is evaluating to 
            % false.
            
            
            if a > 0 & b > 0
                fprintf("hello world\n")
            end
        end
    end
end
            