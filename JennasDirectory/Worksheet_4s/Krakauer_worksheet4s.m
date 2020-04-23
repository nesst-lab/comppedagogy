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
Switch/case statements are better because they're more condensed. However, they only operate over the expected values of a variable rather than logical statements, so you need to be specific. If/else is better because you can use logical statements.

%1. Switch/case to else/if statement:
condWord = 'tapper';
if strcmp(condWord,'capper') || strcmp(condWord,'gapper')
	max_events = 7;
elseif strcmp(condWord,'sapper') || strcmp(condWord,'zapper')
	max_events = 6;
elseif strcmp(condWord,'sea') || strcmp(condWord,'C') || strcmp(condWord,'Z') || strcmp(condWord,'czar') || strcmp(condWord,'gar') || strcmp(condWord,'cod') || strcmp(condWord,'god')
	max_events = 5;
else
	max_events = NaN;
end
fprintf('You may have at most %d events\n',max_events);

%2. else/if to switch/case statement:
name = 'sarah';
switch name
	case 'sarah'
		almaMater = 'UC Berkeley'
	case 'robin'
		almaMater = 'Cornell University'
end
fprintf('%s earned her PhD at %s\n', name,almaMater);

end

%3. Can you translate the following to a switch/case statement? Why/why not?Yes because you can add "otherwise" to the switch/case statement for the unknown alma mater.
name = 'ben';
switch name
	case 'sarah'
		almaMater = 'UC Berkeley';
		possPro = 'her';
	case 'robin'
		almaMater = 'Cornell University';
		possPro = 'her';
	case 'ben'
		almaMater = 'USC';
		possPro = 'his';
	case 'carrie'
		almaMater = 'MIT';
		possPro = 'her';
	otherwise
		almaMater = 'unknown';
		possPro = 'their';
end
fprintf('%s earned %s PhD at %s\n',name,possPro,almaMater);
