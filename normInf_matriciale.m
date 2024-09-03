function [maxA, normInf, lastC] = normInf_matriciale(A)
% A = matrice in ingresso nxm

%procedo al calcolo del max elemento di A
[nr, nc] = size(A);

ind = 0;
if(nr == 0)
    if(nc == 0)
        ind = 1;
        error('matrice nulla');
    end
end

if(ind == 0)
    maxA = A(1,1);
    for i = 1:1:nr
        for j = 1:1:nc
            if(A(i,j) > maxA)
                maxA = A(i,j);
            end
        end
    end
end

%procedo all'individuazione dell'ultima colonna di A
lastC = zeros(1,nc);
if(ind == 0)
    for i = 1:1:nc          
        lastC(1,i) = A(nr,i);
    end
end

%procedo al calcolo dalla norma infinito di A, ossia il max delle
%sommatorie per riga di A

normInf = 0;
if(ind == 0)
    for i = 1:1:nr
        sum = 0;
        for j = 1:1:nc
            sum = sum + abs(A(i,j));
        end
        if(sum > normInf)
            normInf = sum;
        end
    end
end
end