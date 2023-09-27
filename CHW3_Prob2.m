%2 
f(x) = x^3 -2*x - 2; %given

g(x) = diff(f)
x = 1; 
e = 10^(-8);
while abs((f(x))) >= e
    x = x - (f(x) / g(x));
end

fprintf('%.8f', x)