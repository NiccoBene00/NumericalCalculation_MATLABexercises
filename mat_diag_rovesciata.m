%script per la costruzione di una matrice diagonale rovesciata dato un 
%vettore random

n=5;
v=rand(n,1);
v
V=diag(v(n:-1:1));
V=V(:,n:-1:1);
V