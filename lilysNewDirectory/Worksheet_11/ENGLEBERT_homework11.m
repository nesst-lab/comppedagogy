% *** 
% Homework item 1:
% Write a code snippet that will assign the following sentence with "proper" capitalization to the variable 
% goodSentence 
% 
% sentence = 'sarah and robin are postdocs with the blab and smac labs at uw-madison.'

goodSentence = [upper(sentence(1)) sentence(2:10) upper(sentence(11)) sentence(12:38) upper(sentence(39:42))...
    sentence(43:47) upper(sentence(48:51)) sentence(52:60) upper(sentence(61:64)) sentence(65:end)];


% Homework item 2:
% Now write another code snippet that will assign the same sentence with "sponge-bob capitalization" to the
% variable bobSentence. (Here, sponge-bob capitalization simply means that every other letter is lower/upper
% case. You can treat spaces like a character.)
% 
% Note: the function rem(x,y) or mod(x,y) may be helpful here! 

for i=1:length(sentence)
    if rem(i,2)
        bobSentence(i)=lower(sentence(i));
    else
        bobSentence(i)=upper(sentence(i));
        
    end
end
sprintf(bobSentence)



