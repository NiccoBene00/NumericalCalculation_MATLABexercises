function [norma] = norma(x,p)
%funzione norma

n=length(x);

if(p < 1)
    error('Il numero p deve essere maggiore o uguale a 1')
end

if p~=inf
    norma=0;
    for i=1:n
        norma=norma+x(i)^p;
    end
    norma=norma^(1/p);
else
    norma=abs(x(1));
    for i=1:n
        if(abs(x(i)) > norma)
            norma=abs(x(i));
        end
    end
end

disp(norma);

end