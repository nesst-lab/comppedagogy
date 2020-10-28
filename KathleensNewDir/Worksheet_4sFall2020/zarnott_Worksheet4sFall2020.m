#####
% RK 10/14: Can you also do the different if statements from the logical operators practice? 

#####
% RK 10/14: also missing question chaining together three variables with & and | (I've marked these questions
% off in a new version to make them easier to find)

% short circuiting
% 1. No, I don't think that xor can have a short circuit version because
% one of the statements in xor can be true and due to this you must
% evaluate both statements. 





% practice translating switch/case to if/else and vice versa

condWord = 'tapper';
if strcmp(conWord, 'capper') || 
    strcmp(condWord, 'gapper')
    #####
    % RK 10/14: you're missing something here to be able to do line breaks
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

#####
% RK 10/14: are you sure? Try looking through the introduction to switch/case again (or doing doc switch)

#####
% RK 10/14: So I notice your first and third answer in this question are identical to Kenzie's, in such a way
% that it is almost impossible that there was not copying and pasting going on. Remember that these worksheets
% are not done for a grade, and are meant to teach you the programming tools necessary to work on coding in
% the lab. Simply copying and pasting someone else's answers won't help you at all, and allowing someone else
% to just copy and paste your answers doesn't help them either (though of course everybody in the lab has 
% access to this repository so that is not something you have total control over). 
