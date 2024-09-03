function c = bisezione(N)
%funzione che determina l'approssimazione della radice quadrata di un
%numero N
m=0;
n=N;
maxit=1e2;
toll=1e-10;

for it=1:maxit
    c=(m+n)/2;
    err=c^2-N;
    if abs(err) <= toll
        break;
    elseif it==maxit
        error('la precisione richiesta non è stata raggiunta!');
    elseif err > 0
        n = c;
    else
        m = c;
    end
end

fprintf('approssimazione della radice trovata di %d è %.16f\n', N,c);
fprintf('iterazioni eseguite %d \n', it)
fprintf('risultato fornito operatore sqrt è %d \n', sqrt(N));

end