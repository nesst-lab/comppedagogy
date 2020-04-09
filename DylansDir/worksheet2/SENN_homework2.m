1. Assigning a new variable to an existing variable creates a new memory location for that new variable, giving that new variable the value of the existing variable at that moment.  Therefore changing the existing variable does not change the new varibale.  This is different than other languages, in which assigning a new variable to an existing variable assigns the new variable to a reference to the existing variable's location in memory, leading to changes in one variable being mirrored in the other, unless using a copy or deepcopy function. 

SB: Please try again! What are the values, at this point, of oldWorkingDir and workingDir?


2. oldWorkingDir = fprintf(workingDir)

3. isequal(vector1, vector2) = 1 (True)
spaces and commas both serve as delimiters when assigning vectors

4. 6 x 1, they are not equivalent, they have different dimensions and cannot compare value by value (the second row, first column value of the first cannot be ccompared to the second row, first column value of the second because it does not exist in the second vector).  isequal(rowVector, colVector)

5. matrix = [1,2,3;4,5,6], cellArray = {'a','b','c';'d','e','f'}  
