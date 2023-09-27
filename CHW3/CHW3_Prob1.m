%1-1
x=linspace(-2,2); % set the x-values
y=2*(x.^3)-6*x-1; % the given function
plot(x,y,'r')



%1-2
syms x
f(x) = (2*(x^3))- (6*x) -1; % the given function
% using the Intermediate-Value theorem
% to check the intervals that contain a zero

for i=-2:2
if f(i)*f(i+1)<0 %checking the signs at both end points in interval of length one
interval=[i,i+1] % print the inverval with opposite signs at end points
a=i; b=i+1;
while (b-a)/2>10^-3
c = (a + b)/2;
fa = f(a);
fc = f(c);
if fa*fc < 0
a = c;
else
b = c;
end
end
c = (a + b)/2;

end

end
fprintf('%.3f',c)


