clear;
clc;

val = 1;
allRows = {};

max = 1e+6;

while(val <= max)
a_n = {val};
disp(a_n);
sums = {{val}};

col = 2;
finishFlag = true;
while(finishFlag)
    finalResults = {};
    finishFlag = false;
    for i = 1:1:size(a_n,2)
        finishFlag = true;
        
        a_ni = a_n{i};
        a_next = a_ni;
        diff = 0;
        
        results = {};
        while(a_ni + diff <= max)
            diff = diff + 1;
            flag = true;
            while(flag && a_ni + diff <= max)
                if(a_next < a_ni + diff)
                    a_next = nextPerfectPower(a_ni + diff - 1);
                elseif(a_next > a_ni + diff)
                    diff = nextPerfectPower(a_next - a_ni - 1);
                else
                    flag = false;
                end
            end
            if(~flag)
                results{1,end+1} = a_next;
            end
        end
        finalResults = cat(2,finalResults,results);
    end
    
    finalResults = redundantCell(finalResults);
    a_n = finalResults;
    sums{1,col} = a_n;
    disp(a_n);
    col = col + 1;
    
    continue;
end

sortedArray = [];
for i = 1:1:size(sums,2)
    sortedArray = cat(2,sortedArray,cell2mat(sums{1,i}));
end
sortedArray = sort(unique(sortedArray));

allRows(val,1:size(sortedArray,2)) = num2cell(sortedArray);

val = val + 1;

end