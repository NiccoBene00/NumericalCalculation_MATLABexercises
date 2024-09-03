function [x, detU] = sost_indietro(U,b)
% U = matrice triangolare superiore di ordine n
% b = vettore nx1

%calcolo il determinante senza utilizzare il comando predefinito det
%mi ricordo che se la matrice triangolare superiore il determinante è il 
%prodotto degli elementi diagonali

detU = 1;
[nr, nc] = size(U);

for i = 1:1:nr
    detU = detU * U(i,i);
end

%adesso procedo alla risoluzionde del sistema Ux=b
%in primo luogo verifico che U non sia singolare, infatti se detU = 0
%il vettore soluzione è il vettore nullo

x = zeros(nr,1); 
if(detU == 0)
    disp('matrice singolare!');
else
    disp('matrice non singolare')
    x(nr,1) = b(nr)/U(nr,nr);
    for i = nr-1:-1:1
        sum = 0;
        for j = i+1:1:nr
            sum = sum + U(i,j)*x(j,1);
        end
        x(i,1) = (b(i,1) - sum)/U(i,i);
    end

end