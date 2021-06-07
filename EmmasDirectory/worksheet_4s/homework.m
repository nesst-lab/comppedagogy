function homework(a, b)
if nargin < 2 || isempty(b) % isempty(b) || nargin < 2 <-- this results in an error
    fprintf('not enough arguments!!!\n')
else
    fprintf('the if statement evaluated to false\n')
end

end
