% Roger Aguilar-Codina, Hyunae Kwon, Negan le, Daniel Li
% Alyssa Seay, James Wood
% MATH 4334.001/ CS 4334.001
% Computer Homework 1
% Due 09/06/2023

% Write MATLAB codes to solve the following problems. 
% Your solution should include the source code,
% the relevant output, and a written explananation.

% Problem 1 

 % Initialize the highest degree coefficient to the polynomial and set x. 

 poly = 8; 
 x = -1/2;
 poly_coeffs = [-1, -3, 1, -3, 1];

 % Note: for general use of n length
 % polynomials, a vector will need to be set
 % to the polynomial coefficients- besides the initialized to poly.
 % For this example, we set n to 5 for a fifth degree polynomial.  

 n = length(poly_coeffs);

 for i = 1:n
     poly = (poly * x) + poly_coeffs(i);    
 end

 display(poly);

 % Notably, to create a taylor polynomial,
 % the coefficient for the highest degree is nested 
 % first. There after, with each multiplication of x, 
 % the succeeding coefficient is added. Thus, the polynomial
 % is evaluated with nested multiplication. 
 % Theoretically, a code function could be created for this exact equation
 % where only an x value would need to be inserted from the user. In the 
 % provided case, x is -1/2. 

% Problem 2 

 % Develop a taylor series expansion for f(x) = x^3e^-5x

 % Taylor Series approximation
 sympref('FloatingPointOutput',true);
 syms a;
 funct = (a^3) * exp(-5 * a);
 T_series = subs(funct,a,0);
 for i = 1:4
     funct = diff(funct);
     T_series = T_series + subs( (funct * ((1.2-a)^i)) / (factorial(i)) ,a,0);
 end

 display(T_series);

% The above approximation works by writing the given function with a place
% holder variable. With each iteration in the for loop, the function is
% differentiated, mulitplied with its respective factorial and difference,
% then evaluated with the correct substitutions. Therefore, if the for loop
% were to be increased from 1:4 to 1:25, the taylor approximation would
% now be estimated at the 25th term. Note: the for loop only accurately
% evaluates the taylor approximation if i is initiated at 1 to n as the
% function does not have a placeholder for all of its differentiations. 


% Evaluate the function precisely (without taylor series approximation)
 y = 1.2;
 exact_funct = (y^3) * exp(-5*y);

 display(exact_funct);
 
% The comparison: 
 % Noticeably, the values of the fourth taylor approximation and the exact
 % value are extraneous. Thus, the fourth taylor series has a major error,
 % but,  with a little experimentation, the twenty-fifth taylor
 % approximation accurately relates the actual and the approximation.
