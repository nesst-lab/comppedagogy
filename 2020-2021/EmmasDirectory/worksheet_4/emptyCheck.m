
function emptyCheck(var)
    if isempty(var)
        var = [3, 4];
        
    else
        fprintf('This variable is not empty\n')
    end
end
% I can't figure out why this is not working....