function [output] = nextPerfectPower(input)

if(input == 1)
    output = 4;
    return;
end

min = 2 * input;
n = 2;

flag = true;
while(flag)
    a = (input)^(1/n);
    if(a < 2)
        flag = false;
    end
    
    nextPower = (ceil(a))^n;
    if(nextPower == input)
        nextPower = (ceil(a) + 1)^n;
    end
    
    if(nextPower < min)
        min = nextPower;
    end
    n = n + 1;
end

output = min;
end