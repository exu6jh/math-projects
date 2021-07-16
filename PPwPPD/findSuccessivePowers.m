clear;
clc;

isVPI = 0;

val = 155;
sums = {};

a_n = val;
diff = 1;
a_next = a_n;

col = 1;
while(true)
    flag = true;
    while(flag)
        if(a_next < a_n + diff)
            a_next = nextPerfectPower(a_n + diff - 1);
        elseif(a_next > a_n + diff)
            diff = nextPerfectPower(a_next - a_n - 1);
        else
            flag = false;
        end
    end
    
    a_n = a_next;
    diff = 1;
    
    sums{1,col} = a_n;
    disp(a_n);
    
    col = col + 1;
    
    continue; 
end