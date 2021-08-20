clear;
clc;

largestNumber = 40;

allNumbers = find(zeros(1,largestNumber - 2) == 0) + 2;
residues = generateResidues(allNumbers);
[cover,exampleWrong,mult] = isCoveringSystem(residues);
disp(cover);
disp(exampleWrong);
disp(mult);