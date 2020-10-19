% Matlab function for solution of matrix equation
% Using Jacobi method
% Initial solution set is considered as zero
% Take input as System Matrix A
% Coefficient Matrix B
% Value returns the solution set
function Value = jacobiMethod(A,B);
A = [5 -2 1; 1 4 -2; 1 2 4]; % System Matrix
B = [4; 3; 17];
[M,N] = size(A);        % Size of matrix
x = zeros(M,1);         % Zero matrix initialization for solution
err = 1e-5;             % Initialise error limit
K = 50;                 % Number of iterations to be done
for k = 1:K   
    x2 = x;
    for m = 1:N
        
        x(m) = (B(m) - (A(m,1:m-1)*x2(1:m-1))-(A(m,m+1:N)*x2(m+1:N)))/(A(m,m));
        
    end
    
    errorVal = abs(x2-x);           % Calculation of error
    if errorVal<=err
       break;
    end
end
Value = x;
disp(['The solution set is:                     ', num2str(x')]);   % Solution of System of equations 
disp(['Number of iteration taken for solution:  ', num2str(k)]); % Display number of iteration taken
end
