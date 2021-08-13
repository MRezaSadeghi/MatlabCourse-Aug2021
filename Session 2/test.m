%  function [error,s]=approx_jacob_kasri(alfa,beta,landa,n,u)
clc
clear

n = 5;

alfa=0.5;beta=0.3;landa=0.5;
syms x y
w=(landa*x^((landa*beta)+landa-1))*((1-x^landa)^alfa);
%    uu=y^2;
uu=sin(y);
% uu=exp(y);
u=(subs(uu,y,2*x^(landa)-1));
s=0;
n_array = 0:n;
err = sym('err', [1, n]);
for i=n_array 
    uh1=(gamma(i+alfa+1)*gamma(i+1+beta))/(((2*i)+1+alfa+beta)*gamma(i+1)*...
    gamma(i+1+alfa+beta));

    uh2=vpa((int(u*jacobiP(i,alfa,beta,2*x^(landa)-1)*w,x,0,1)),20);
    uh=uh2/uh1;
    s=s+(uh*jacobiP(i,alfa,beta,2*x^(landa)-1));

    %%%%% mohasebe khata %%%%%%
    e=(u-s);
    % vpa((sqrt(int(e^2,x,0,1))),30)
    disp(i/n * 100)
    err(i+1)=(vpa((sqrt(int(e^2,x,0,1))),30));
end
d=[2,5,10,15];
semilogy(n_array,err)