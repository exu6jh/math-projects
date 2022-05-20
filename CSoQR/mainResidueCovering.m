clear;
clc;

largestNumber = 40;

allNumbers = find(zeros(1,largestNumber) == 0);
residues = generateResidues(allNumbers, true);
[cover,exampleWrong,mult] = isCoveringSystem(residues);
disp(cover);
disp(exampleWrong);
disp(mult);