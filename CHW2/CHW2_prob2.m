% Consider a right triangle whose legs are of length 3344556600 and 1.2222222.
% How much longer is the hypotenuse than the longer leg? Give your answer with
% at least four correct digits.




% Problem 2

a=3344556600; b=1.2222222;

% Given values for the legs of a right triangle
% hypotenuse of a right triangle = sqrt(a^2 + b^2) (by Phythagorean thm)
% difference = hypotenuse - the longer leg(a)= sqrt(a^2 + b^2) -a
% since b is very small, sqrt(a^2 + b^2) is very close to a
% so, difference has a potential loss of significance
% need to use alternative form using rationalizing.

sig_loss_diff = sqrt(a^2 + b^2) - a;
display(sig_loss_diff);

difference = (b^2)/(sqrt(a^2 +b^2)+a);

display(difference);

% equivalent to "sqrt(a^2 + b^2) -a"