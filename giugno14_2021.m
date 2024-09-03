function [ind, c] = giugno14_2021(U, b)
% U = matrice quadrata triangolare inferiore
% b = vettore colonna che deve avere lo stesso numero di righe di U

%verifico se U è una matrice quadrata triangolare inferiore
[nr, nc] = size(U);
if(nr ~= nc)
    error('U is not a square matrix!');
else
    ind = 0;
     for i = 1:1:nr-1
         for j = i+1:1:nc
             if(U(i,j) ~= 0)
                 ind = 1;
             end
         end
     end

     dimb = length(b);
     if(dimb ~= nr) 
         ind = 1;
     end
   
     if(ind == 1)
         c = 9*ones(nr,1);
     else
         %risolvo il sistema Ux = b col metodo di sostituzione all'indietro
         c = zeros(nr, 1);

         for i = 2:1:nr
             sum = 0;
             for j = 1:1:i-1
                 sum = sum + U(i,j)*c(j);
             end
             c(i,1) = (b(i) - sum)/U(i,i);
         end
     end
end

end