%successione 3(k^2)
S=0;
K=0;

while(S <= 2000)
    K=K+1;
    S=S+3*(K^2);
end

disp(S)
disp(K)