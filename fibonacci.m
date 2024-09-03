%successione di fibonacci
N=10;
f= zeros(1,10);
f(1)=0;
f(2)=1;

for j=3:10
    f(j)=f(j-1)+f(j-2);
end

disp(f)