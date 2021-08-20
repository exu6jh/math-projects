function [finalCell] = generateResidues(moduli)
%GENERATERESIDUES Takes array of moduli and returns cell of [residue,modulo]

residues = {};
for i=1:1:size(moduli,2)
    moduliResidues = [];
    for j=1:1:moduli(i)
        residue = mod(j^2,moduli(i));
        if(~ismember(residue,moduliResidues))
            moduliResidues = [moduliResidues,residue];
        end
    end
    moduliResidues = sort(moduliResidues);
    
    residueCell = {};
    for j=1:1:size(moduliResidues,2)
        residueCell = [residueCell,[moduliResidues(j),moduli(i)]];
    end
    
    residues = [residues,residueCell];
end
finalCell = residues;

end

