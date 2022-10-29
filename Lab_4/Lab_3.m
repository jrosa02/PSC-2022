clear all; close all;
syms t t1 t2 offset x 
T0 = 1.0;		% okres
t1 = -0.5; 
t2 = t1+T0;
offset = T0/4;
f0 = 1/T0;		% czestotliwosc
w0 = 2*pi*f0;	% pulsacja
% granice ca³kowania
BND = [t1,t2] + offset; 
x = triangularPulse(t1,0,t2,t-offset)-0.5;

NT = 15;
X=[];
ind = -NT : NT;
for n = ind
    Xn = (1/T0)*int(x*exp(-1i*w0*n*t),t,BND);
    X(n + NT + 1) = Xn;
end									

NT = 0:15;
a=[];
b=[];
for n = NT
 a(n+1) = (1/T0)*int(x*cos(w0*n*t),t,BND);
 b(n+1) = (1/T0)*int(x*sin(w0*n*t),t,BND);
end


step = (BND(2) - BND(1))/1000;
tt = BND(1)-T0 : step: BND(2) + T0;
xx = zeros(1,length(tt));
xx = xx + a(1); % skladowa stala

for n = NT
 xx_n = 2*(a(n+1)*cos(w0*n*tt) + b(n+1)*sin(w0*n*tt));
 xx = xx + xx_n;
end