% Define the function 

f = @(x) exp(x) + x - 7; % The given function

% Initial Guesses  

x0 = 1; 
x1 = 2; 

% Set Tolerance 
tolerance = .00000001;  


% Secant Method Iterations 
iterations = 0; 
while abs(x1 - x0) >= tolerance
    x2 = x1 - (f(x1) * (x1 - x0)) / (f(x1) - f(x0));
    x0 = x1; 
    x1 = x2; 
    iteration = iteration + 1;

end

% Result

fprintf('Approximate solution after %d iterations: %.8f\n', iteration, x2);  
% 3 iterations using the second method
