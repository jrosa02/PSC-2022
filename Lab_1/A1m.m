a = 23
b = 5
c = a / b
c = round(c)
d = mod(a,b)
v = [0, 5, 0, 4, 0]'
R2 = normrnd(3, 5, 5, 3)
R3 = [R2, v]
x = 0:pi/10:2*pi
y = sin(x)
plot(x,y)
mean(y)
v_ans = [5; 1; -5]
M_eq = [[1, 2, 3]; [-1, 1, 4]; [-1, -2, -3]]
det(M_eq)
%det 0 nie ma rozwiazan
load exampledata.mat
R= RGB(:,:,1);
G=RGB(:,:,2);
B=RGB(:,:,3);

Rw= R(:)';
Gw= G(:)';
Bw=B(:)';

A=[Rw; Gw; Bw];
Temp1=[0; 128;128]
Temp2=[ 0.299 0.587 0.114; -0.169 -0.331 0.5; 0.5 -0.419 -0.081]

B= Temp1+ Temp2*A;
Y = B(1,:);
Cb = B(2,:);
Cr = B(3,:);

Y = reshape(Y,[650,600]);
Cb = reshape(Cb, [650, 600]);
Cr = reshape(Cr, [650, 600]);

YCbCr = Y;
YCbCr(:,:,2) = Cb;
YCbCr(:,:,3) = Cr;

imshow(YCbCr)

a = pi
b=ones(1,1, 'uint8')
c = double(a) + double(b)

letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
q = 'abcdefghij'
for v = 1:10
q(v) = letters(randi(7));
end
q