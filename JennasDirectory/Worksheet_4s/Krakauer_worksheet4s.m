1)
a = 2;
b = -1;

if a > 0 & b > 0
	fprintf('hello world'\n)
end

if round(a) == a & round(b) == b
	fprintf('hello world'\n)
end

if a ~= 0 & b ~= 0
	fprintf('hello world'\n)
end

if isempty(a) & isempty(b)
	fprintf('hello world'\n)
end

2)
if a > 0 | b > 0
	fprintf('hello world'\n)
end

if round(a) == a | round(b) == b
	fprintf('hello world'\n)
end

if a~= 0 | b~= 0
	fprintf('hello world'\n)
end

if isempty(a) | ~isempty(b)
	fprintf('hello world'\n)
end

3)
if xor(a>0,b>0)
	fprintf('hello world'\n)
end

if xor(isempty(a),~isempty(b))
	fprintf('hello world'\n)
end

if xor(a>0,b>0)
	fprintf('hello world'\n)
end

% !! I'm not sure what it's asking for how to assign a and b so that you would print something out

4)
a = 1;
b = 1;
c = 0;

a&b&c % false
a&b|c % true
a|b&c % true

%Short-circuiting
1)
a = 15;
b = 5;
if a < 0 && b > 0 %if a is negative, then move onto the next statement. However, a is not negative so the statement is false.
	fprintf('hello world\n')
end
% Is there a short-circuit version of xor? No, because xor means only one condition can be true.

2) %would it be okay to write the statement as follows?
if isempty(dataPath) || nargin < 1, dataPath = cd; end %No, nargin < 1 needs to be evaluated first.

%Switch-case statements
1) condWord = 'capper';
switch condWord
	case 'capper'
		max_events = 7;
	case 'gapper'
		max_events = 8;
	case 'sapper'
		max_events = 9;
	case 'zapper'
		max_events = 10;
end
fprintf('You may have at most %d events\n',max_events);

2) If a were 4, nothing would print because a does not match either of the cases.


