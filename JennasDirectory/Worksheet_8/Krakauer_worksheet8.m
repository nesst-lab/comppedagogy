1.for integer 40:50
      square = integer^2;
      fprintf('The square of %d is %d\n',integer,square);
  end

2. for integer 1:2:1000
       square = integer^2;
       fprintf('The square of %d is %d\n',integer,square);
   end

3. trialIx = length(data);
   for trial = 1:trialIX
	trialFileName = [num2str(1)'.mat'];
	fprintf('The file name for trial %d will be %s\n',trialIx,trialFileName);
   end

4. assignGoodEvil = [1 4 12 18];
   for charIx = assignGoodEvil
	officeCharacters(charIx).goodEvil = goodEvil{i};
   end

or

for i = 1:length(goodEvilAvailable)
	charIx = goodEvilAvailable(i);
	officeCharacters(charIx).goodEvil = goodEvil{i};
end

5. traisl2run = 31:60;
   for i = 1:length(words4trials)
	trialNo = trials2run(i);
	trialWord = words4trials{i};
	fprintf('The word for trial %d is %s\n',trialNo,trialWord)
   end

