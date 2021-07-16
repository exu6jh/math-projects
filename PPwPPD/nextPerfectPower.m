function [output, base, exponent] = nextPerfectPower(input)

if(input == 0)
    output = 1;
    base = 1;
    exponent = 1;
elseif(isequal(input,1))
    output = 4;
    base = 2;
    exponent = 2;
    return;
end

min = 2 * input;
n = 2;

flag = true;
while(flag)
    a = input^(1/n);
    if(a < 2)
        flag = false;
    end
    
    b = ceil(a);
    nextPower = b^n;
    
    if(nextPower == input)
        nextPower = (b + 1)^n;
    end
    
    if(nextPower <= min)
        min = nextPower;
        base = a + 1;
        exponent = n;
    end
    n = n + 1;
end

output = min;
end