1. fprintf('1 little piggy\n')
   while i = 2:10
	 fprintf('%d little piggies\n',i)
   end

2. aNumber = 0;
   count = 0;
   while round(aNumber) < 1 && count < 101
       aNumber = -rand;
       count = count + 1;
   end
   fprintf('This while loop ran %d time(s)\n',count);

3. aNumber = 0;
   count = 0;
   while round(aNumber)
       aNumber = -rand;
       count = count + 1;
   if count > 101
      aNumber = 1;
   end
   fprintf('This while loop ran %d time(s)\n',count);
