function [p, norm2p] = parabola_mamq(x,y)

dimx = length(x);
dimy = length(y);

if(dimx ~= dimy)
    error('ERROR: x and y have incongruent dimension');
else
    %determino la matrice dei coefficienti A e il vettore termini noti b
    A = zeros(3,3);
    b = zeros(3,1);

    A(1,1) = dimx;
    for i = 1:1:dimx
        A(1,2) = A(1,2) + x(i);
        A(1,3) = A(1,3) + x(i)^2;
        A(2,3) = A(2,3) + x(i)^3;
        A(3,3) = A(3,3) + x(i)^4;
        b(1,1) = b(1,1) + y(i);
        b(2,1) = b(2,1) + x(i)*y(i);
        b(3,1) = b(3,1) + (x(i)^2)*y(i);
    end

    A(2,1) = A(1,2);
    A(2,2) = A(1,3);
    A(3,1) = A(2,2);
    A(3,2) = A(2,3);

    %procedo al calcolo del sistema lineare con l'operatore \

    p = A\b;

    %procedo al calcolo della norma due del vettore p

    norm2p = 0;

    for i = 1:1:3
        norm2p = norm2p + p(i)^2;
    end

    norm2p = sqrt(norm2p);
end

end