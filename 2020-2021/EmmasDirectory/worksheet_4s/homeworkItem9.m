%% task: translate between switch/case and if/else
%% translation #1:
%Original:
condWord = 'tapper'; 
switch condWord
    case {'capper','gapper'}
        max_events = 7;     % doesn't include aspiration. is OST status but not a user event        
    case {'sapper','zapper'}
        max_events = 6; 
    case {'sea','C','Z','czar','gar','cod','god'}
        max_events = 5; 
end
fprintf('You may have at most %d events\n',max_events); 

%Translation:
if condWord == 'capper' || condWord == 'gapper'
    max_events = 7;
elseif condWord == 'sapper' || condWord == 'zapper'
    max_events = 6;
elseif condWord == 'sea' || condWord == 'C' || condWord == 'Z' || condWord == 'czar' || condWord == 'gar' || condWord == 'cod' || condWord == 'god'
    max_events = 5;
end
fprintf('You may have at mose %d events \n', max_events);

%% TRANSLATION #2
% Orignial:
name = 'sarah'; 
if strcmp(name,'sarah')
    almaMater = 'UC Berkeley'; 
elseif strcmp(name,'robin')
    almaMater = 'Cornell University'; 
end
fprintf('%s earned her PhD at %s\n',name,almaMater); 

% Translation:
switch sarah
    case sarah
        almaMater = 'UC Berkeley';
    case robin
        almaMater = 'Cornell University'
end
fprintf('%s earned her PhD at %s\n',name,almaMater);

%% TRANSLATION #3
% orignial:
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

% translation:
switch name
    case sarah
        almaMater = 'UC Berkeley';
        possPro = 'her';
    case robin
        almaMater = 'Cornell University';
        possPro = 'her';
    case ben
        almaMater = 'USC';
        possPro = 'his';
    case carrie
        almaMater = 'MIT';
        possPro = 'her';
    otherwise
        almaMater = 'unknown';
        possPro = 'their';
end

fprintf('%s earned %s PhD at %s\n',name,possPro,almaMater); 
        
    