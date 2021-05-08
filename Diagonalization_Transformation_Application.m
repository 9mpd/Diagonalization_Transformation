% Powers of a Matrix & Matrix Polynomials using 
% Diagonalization Transformation.


clear    % Clear MATLAB Workspace.
clc      % Clear MATLAB Command Window.

% Title of the program.
fprintf("<strong>\t\tA PROGRAM TO CALCULATE POWERS OF A MATRIX " + ...
    "AND \n\t\tMATRIX POLYNOMIALS USING DIAGONALIZATION " + ...
    "TRANSFORMATION.</strong>\n\n");

% First condition for diagonalization transformation. 
disp("Note 1. : Only square matrices, n×n, can be diagonalized.");

% Scope of the program.
disp("Note 2. : This program allows complex numbers.");

% Symbolic variable used in the calculation of matrix polynomial.
syms x

% User input : Dimension of the marix.
n = input("\nEnter the dimension of your square matrix.");

% Symbolic matrix to input the given matrix.
A = sym('A',[n n]);

% Input entries of the matrix.
for ii = 1:n
    fprintf("\n");
    for jj = 1:n
        A(ii,jj) = input(['Enter a' num2str(ii) num2str(jj) ' : ']);
    end
end

% Show entered matrix to the user.
pause(1);
fprintf('<strong>\nThe Matrix You Entered :</strong>');
round(A)

% Start timer to record the time taken in computation process.
tstart = tic;
% Calculation of eigen values and eigen vectors.
[V,D] = eig(A);
% Stop timer.
tend = toc(tstart);

% Check whether eigen vectors are linearly independent or not.
% To know given matrix is diagonalizable or not.
if rank(V) == n
    pause(1);
    fprintf("===> <strong>Matrix is Diagonalizable.</strong> <===\n\n");
    % Modal matrix.
    pause(1);
    fprintf("<strong>The Modal Matrix :</strong>");
    round(V)
    disp(['Note : The column vector(s) of this modal matrix are ' ...
        'the eigen vectors of the given matrix.']);
    % Spectral matrix or Diagonal matrix.
    pause(1);
    fprintf('<strong>\nThe Diagonal or Spectral Matrix :</strong>');
    round(D)
    disp(['Note : The diagonal element(s) of this diagonal matrix are ' ...
        'the eigen values of the given matrix.']);
    fprintf("\nTime taken in the calculation of modal & " + ...
        "spectral matrices = %.5f seconds.",tend);
else
    fprintf("<strong>Matrix is non-diagonalizable. " + ...
        "We can't proceed further.</strong>");
    return;
end

% While loop initialiser.
l = 0;
while l ~= 3   % Loop tester.
    % Program choices.
    fprintf('\n\n<strong>Select an option:</strong>\n');
    disp('1. Calculate Matrix Power.');
    disp('2. Calculate Matrix Polynomial.');
    disp('3. Exit.');
    N = input("Your choice : ");
    
    switch N
        case 1
            % Input matrix power.
            pn = input('\nEnter the power of the matrix.');
            tStart = tic;
            % Martix power calculation.
            A_N = V*(D^(pn))*(inv(V));
            tEnd = toc(tStart);
            fprintf("<strong>\n%.0fth power of given matrix " + ...
                "is :</strong>", pn);
            round(A_N)
            pause(1);
            fprintf("Time taken in the calculation of " + ...
                "option %.0f = %.5f seconds.",N, tEnd);
            fprintf(['<strong>\nTotal time taken ' ...
                '= %.5f seconds</strong>'], tend + tEnd);
        case 2
            % Matrix polynomial input.
            f = input("\nEnter the matrix polynomial without " + ...
                "constant term.","s");
            P = str2func(['@(x)',f]);
            const = input("\nEnter constant term, if not then enter 0.");
            fprintf(["<strong>\nValue of the matrix polynomial " + ...
                    "for the given matrix is :</strong>"]);
            tStart = tic;
            % Matrix polynomial calculation.
            P_N = V*P(D)*(inv(V)) + const*eye(n);
            round(P_N)
            tEnd = toc(tStart);
            pause(1);
            fprintf("Time taken in the calculation of " + ...
                "option %.0f = %.5f seconds.",N, tEnd);
            fprintf(['<strong>\nTotal time taken ' ...
                '= %.5f seconds</strong>'], tend + tEnd);
        case 3
            return;
        otherwise 
            fprintf("<strong>\nWromg Input</strong>");
            pause(1);
    end
end

