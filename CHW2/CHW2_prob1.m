% Problem 1 

%Evaluate the function
%f(x) = (1 − ((1 - x)^3))/ x
% for x = 10^(-1), ..., 10^(−14). Then, using an alternative form of expression for f(x)
%that avoids significance loss, repeat the same calculation and make a table of
%all the results obtained.

for i=1:14
x(i)=10^(-i); %given x values
A(i,1)=(1-(1-x(i))^3)/x(i);% first column for f(x)
A(i,2)=3-3*x(i)+x(i)^2; %second column for equivalent form of f(x) with less computations (g(x)) 
% to avoid loss of significance
end

% T = table(lat,lon,'VariableNames',["Latitude","Longitude"])
Results = table(A(1:14,1),A(1:14,2), 'VariableNames', ["f(x)", "g(x)"]);
display(Results);
% answer for the table