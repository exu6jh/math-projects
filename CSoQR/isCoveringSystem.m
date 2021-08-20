function [isCover,exampleWrong,commonMult] = isCoveringSystem(congruences)
%ISCOVERINGSYSTEM Determines if a cell of congruences forms a covering system
%   Takes a cell of congruences (which are 1 row by 2 column arrays
%   representing the a_i and n_i in order) and determines if it is a
%   covering system.

commonMult = 1;
for i=1:1:size(congruences,2)
    commonMult = lcm(commonMult,congruences{i}(2));
end

for i=1:1:commonMult
    isCover = 0;
    for j=1:1:size(congruences,2)
        if(mod(i,congruences{j}(2)) == congruences{j}(1))
            isCover = 1;
        end
    end
    
    if(~isCover)
        exampleWrong = i;
        break
    end
end

end

