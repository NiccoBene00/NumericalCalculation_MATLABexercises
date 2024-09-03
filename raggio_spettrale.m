function [maxEig] = raggio_spettrale(A)
%J=M'*N

[nr, nc] = size(A);

%procedo allo splitting, calcolando M
d = diag(A);
M = diag(d);
M = inv(M);

%calcolo N=-(U+L)
upper = triu(A);
lower = tril(A);

for i = 1:1:nr
    upper(i,i) = 0;
    lower(i,i) = 0;
end

N = -(upper + lower);

%calcolo J
J = M*N;

eigenvalues = eig(J);
n = length(eigenvalues);

maxEig = eigenvalues(1);

for i = 2:1:n
    if(eigenvalues(i) > maxEig)
        maxEig = eigenvalues(i);
    end
end

disp(maxEig);

end