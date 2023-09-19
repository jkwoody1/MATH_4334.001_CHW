% Consider a right triangle whose legs are of length 3344556600 and 1.2222222.
% How much longer is the hypotenuse than the longer leg? Give your answer with
% at least four correct digits.

for i=1:14
x(i)=10^(-i); %given x values
A(i,1)=(1-(1-x(i))^3)/x(i);% first column for f(x)
A(i,2)=3-3*x(i)+x(i)^2; %second column for equivalent form of f(x)
% to avoid loss of significance
end

A % answer for the table


% Problem 2

a=3344556600; b=1.2222222;

% ginven values for the legs of a right triangle
% hypotenuse of a right triangle = sqrt(a^2 + b^2) (by Phythagorean thm)
% difference = hypotenuse - the longer leg(a)= sqrt(a^2 + b^2) -a
% since b is very small, sqrt(a^2 + b^2) is very close to a
% so, difference has a potential loss of significance
% need to use alternative form using rationalizing

difference=b^2/(sqrt(a^2 +b^2)+a) 

% equivalent to "sqrt(a^2 + b^2) -a"