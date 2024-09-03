function [sol] = Jacobi(A, b, x, kmax)
%metodo iterativo di Jacobi
dim = length(x);
sol = zeros(dim,1);

for k = 1:1:kmax-1
    for i = 1:1:dim
        sum1=0;
        sum2=0;
        for j = 1:1:i-1
            sum1 = sum1 + A(i,j)*x(j);
        end
        for j = i+1:1:dim
            sum2 = sum2 + A(i,j)*x(j);
        end
        sol(i,1) = (b(i) - sum1 - sum2)/A(i,i);
        
    end
    x=sol;
end

disp(sol);
end