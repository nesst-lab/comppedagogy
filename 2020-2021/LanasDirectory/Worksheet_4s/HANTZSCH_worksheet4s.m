% 1. Translate the following to an if/else statement: 
condWord = 'tapper'; 
if strcomp(condWord, ('capper' | 'gapper'))
    max_events = 7;     % doesn't include aspiration. is OST status but not a user event        
elseif strcomp(condWord, ('sapper' | 'zapper'))
        max_events = 6; 
elseif strcomp(condWord, ('sea'|'C'|'Z'|'czar'|'gar'|'cod'|'god'))
        max_events = 5; 
end
fprintf('You may have at most %d events\n',max_events); 

% 2. Translate the following to a switch/case statement: 
name = 'sarah'; 
switch name
    case {'sarah'}
    almaMater = 'UC Berkeley'; 
    case {'robin'}
    almaMater = 'Cornell University'; 
end
fprintf('%s earned her PhD at %s\n',name,almaMater); 

% 3. Can you translate the following to a switch/case statement? Why/why not? 
%yes, it can because all statements specify a specific value, not a wider
%logical operator

name = 'ben'; 
if strcmp(name,'sarah')
    almaMater = 'UC Berkeley'; 
    possPro = 'her'; 
elseif strcmp(name,'robin')
    almaMater = 'Cornell University';
    possPro = 'her'; 
elseif strcmp(name,'ben')
    almaMater = 'USC'; 
    possPro = 'his'; 
elseif strcmp(name,'carrie')
    almaMater = 'MIT'; 
    possPro = 'her'; 
else 
    almaMater = 'unknown'; 
    possPro = 'their'; 
end
fprintf('%s earned %s PhD at %s\n',name,possPro,almaMater); 