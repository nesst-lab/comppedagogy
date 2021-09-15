function mix_of_operands(a, b)

% this function takes two variables and determiens if only one of the
% variables is positive OR if only on of the variables is empty but not
% both of them are empty.
if (xor(b>0, a> 0)) | (xor(isempty(a), isempty(b)))
    
    % The xor operand is the 'logical exclusive or' which means that one of
    % the statments must be true, and the other must be false.  So, in
    % order for the first statment to evaluate to 1 (true), b or a must be
    % greater than 0, but only one can be greater than 0
    
    fprintf('hello world \n')
end
end
