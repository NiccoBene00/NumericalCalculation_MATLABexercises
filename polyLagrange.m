function [pv] = polyLagrange(x,y,v)
% x = vettore ascisse
% y = vettore ordinate
% v = scalare

dimx = length(x);
dimy = length(y);

if(dimx ~= dimy)
    error('incongruent dimensions of x and y');
end

%procedo al calcolo delle basi di lagrange
l = ones(dimx, 1);
pv = 0;

for i = 1:1:dimx
    for j = 1:1:i-1
        l(i,1) = l(i,1)*((v-x(j))/(x(i)-x(j)));
    end
    for j = i+1:1:dimx
        l(i,1) = l(i,1)*((v-x(j))/(x(i)-x(j)));
    end

    %calcolo pv
    pv = pv + l(i,1)*y(i);
end

end