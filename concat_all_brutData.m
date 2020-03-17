function [pphtab,alltab] = concat_all_brutData(dp,languages,subconds,subs,fdatafile)

%% USAGE
% [pphtab, alltab] = concat_brut_data
% OR
% define the variables dp, languages, subconds, subs, and fdatafile at the
% command line, then type:
% [pphtab, alltab] = concat_brut_data(dp,languages,subconds,subs,fdatafile)
%% 
% dp = datapath where all the data lives

% languages = {'English','French'}
% subconds = {'none','half','full'}

if nargin < 1 || isempty(dp), dp = '/Volumes/smng/experiments/brut/acousticdata'; end
if nargin < 2 || isempty(languages), languages = {'English' 'French'}; end
if nargin < 3 || isempty(subconds), subconds = {'full' 'half' 'none'}; end
if nargin < 4 || isempty(subs), subs = input('Please enter a cell array containing all the subject id numbers, eg {''sp131'' ''sp132''}'); end
if nargin < 5 || isempty(fdatafile), fdatafile = 'fdata_vowel.mat'; end

avgfn = {'first50ms','mid50p'};

tic
for s = 1:length(subs)
    thissub = subs{s};
    for l = 1:length(languages)
        thislang = languages{l};
        for sc = 1:length(subconds)
            cond = subconds{sc};
            thisdp = fullfile(dp,thissub,thislang,cond);
            load(fullfile(thisdp,fdatafile));
            vowels = fieldnames(fmtdata.mels);
            for v = 1:length(vowels)
                vow = vowels{v};
                for a = 1:length(avgfn)
                    % select peripheral trials (ie trials furthest from the
                    % acoustic target) based on either their coordinates in
                    % the first time window (first 50 ms) or the second
                    % (mid50p).
                  
                    avg = avgfn{a}; % use this time window to determine centrality
                    
                     % periph data (farthest tertile for brut)
                    inds_p = find(fmtdata.mels.(vow).(avg).dist > fmtdata.mels.(vow).(avg).tertdist(end));
                    dist.(avg).periph.first = fmtdata.mels.(vow).first50ms.dist(inds_p);
                    dist.(avg).periph.mid = fmtdata.mels.(vow).mid50p.dist(inds_p);
  
                end
                
                % grab target
  
                inidist = [dist.first50ms.periph.first];
                inidist = inidist';
                middist = [dist.first50ms.periph.mid];
                middist = middist';
                centering = inidist-middist;
                % centering = reduction in distance from center from
                % initial to middle time windows
                revcent = middist-inidist;
                % check to make sure that regular centering is greater than
                % centering to the mean
                
                antiini = [dist.mid50p.periph.first];
                antimid = [dist.mid50p.periph.mid];
                anticentering = antiini - antimid;
                anticentering = anticentering';
                % anticentering: select peripheral trials based on
                % variability in the middle time window rather than the
                % initial time window
                tablen = length(inidist);
                subject = cell(tablen,1);
                language = cell(tablen,1);
                subcond = cell(tablen,1);
                vowel = cell(tablen,1);
                subject(:) = {thissub};
                language(:) = {thislang};
                subcond(:) = {cond};
                vowel(:) = {vow};
                
                minitab = table(subject,language,subcond,vowel,inidist,middist,centering,revcent,anticentering);
                if ~exist('pphtab','var')
                    pphtab = minitab;
                else
                    pphtab = vertcat(pphtab,minitab);
                end
                
                % for all trials
                inidist = fmtdata.mels.(vow).first50ms.dist;
                middist = fmtdata.mels.(vow).mid50p.dist;                
                inidist = inidist';
                middist = middist';
                centering = inidist-middist;
                
                revcent = middist-inidist;
                                
                tablen = length(inidist);
                subject = cell(tablen,1);
                language = cell(tablen,1);
                subcond = cell(tablen,1);
                vowel = cell(tablen,1);
                subject(:) = {thissub};
                language(:) = {thislang};
                subcond(:) = {cond};
                vowel(:) = {vow};
                f1vals = fmtdata.hz.(vow).mid50p.rawavg.f1;
                f1vals = f1vals';
                f2vals = fmtdata.hz.(vow).mid50p.rawavg.f2;
                f2vals = f2vals';
                
                miniall = table(subject,language,subcond,vowel,inidist,middist,centering,revcent,f1vals,f2vals);
                
                if ~exist('alltab','var')
                    alltab = miniall;
                else
                    alltab = vertcat(alltab,miniall);
                end
                    
            end
        end
    end
end
toc