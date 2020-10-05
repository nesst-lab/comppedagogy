% short circuiting
% 1. No, I don't think that xor can have a short circuit version because
% one of the statements in xor can be true and due to this you must
% evaluate both statements. 

% practice translating switch/case to if/else and vice versa

condWord = 'tapper';
if strcmp(conWord, 'capper') ||
    strcmp(condWord, 'gapper')
    max_events = 7;
elseif strcmp(condWord, 'sapper') ||
    strcmp(condWord, 'zapper')
    max_events = 6;
elseif strcmp(condWord, 'sea') || strcmp(condWord, 'C') || strcmp(condWord, "Z") || strcmp(condWord, 'czar') || strcmp(condWord, 'cod') || strcmp(condWord, 'god')
    max_events = 5;
else 
    max_events = 0; 
end
fprintf('You may have at most %d events\n',max_events);

name = 'sarah';
switch name 
    case 'sarah'
        almaMater = 'UC Berkley';
    case 'robin'
        almaMater = 'Cornell Univesity';
end
fprintf('%s earned her PhD at %s\n',name,almaMater);

% 3. this one cannot be translated into a swtich/case because it has an
% else statement
