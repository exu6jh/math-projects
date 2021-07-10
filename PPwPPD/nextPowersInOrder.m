clear;
clc;

val = 1;
pows = {};

limit = 200;
forbidden = [6,14,34,42,50,58,62,66,70,78,82,86,90,102,110,114,130,134,158,178,182,202,206,210,226,230,238,246,254,258,266,274,278,290,302,306,310,314,322,326,330,358,374,378,390,394,398];

while(val <= limit)
    a = val;
    diff = 1;
    b = a;
    
    flag = true;
    while(flag)
        if(b < a + diff)
            b = nextPerfectPower(a + diff - 1);
        elseif(b > a + diff)
            diff = nextPerfectPower(b - a - 1);
        else
            flag = false;
        end
    end
    pows{1,val} = [b-a,b];
    
    val = val + 1;
    if(ismember(val,forbidden))
        val = val + 1;
    end
end