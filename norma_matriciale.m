function [nor] = norma_matriciale(A,p)
%funzione per il calcolo della norma 1 o Inf di una matrice mxn

[m,n]=size(A);

if p==1
    norma_vett = zeros(1,n);
    for i=1:n
        norma_vett(i)=norma(A(:,i),1);
    end
elseif p==Inf
    norma_vett = zeros(m,1);
    for j=1:m
        norma_vett(j) = norma(A(j,:), 1);
    end
else
    error('p deve essere o Inf');
end
nor=norma(norma_vett, Inf);

end