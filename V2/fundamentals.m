a = [1:2:11 ; 0:5:25 ; linspace(10,60,6); 50 2 3 641 65 6];
x = (1.5:0.1:2.1);
y = (-3:7) ;% the default is 1 
v = linspace(30 ,10,11);
%The zeros, ones and, eye commands:
zr = zeros(3,4);
ne = ones(3,4);
idn = eye(5);
c = [5 6 7 8 ; 8 96 25 4 ; 545 414 2 4];
b = c'; %The Transpose Operator
c(3,4)=5; % assign a new value to the (3,4)element
newMat = c(:,1);%all rows of column 1
newMat2 = c(1,:);%all columns of row 1
newMat3 = c(1:2,1);%row 1 and 2 of column 1
E=[1 2 3 4 ; 5 6 7 8];%Define a 2x4 matrix E
E(3,:)= 10:4:22 ;% Add the vector 10 14 18 22 as the third row of E.
K=eye(3);%Define a 3 x 3 matrix K
G=[E K]; %Append matrix K to matrix E. The numbers of rows in E and K must be the same.
BG (4,5)=5;
l = length(BG);%returns the length of the largest array dimension in BG
si = size(BG);%returns a row vector whose elements are the lengths of the corresponding dimensions of BG
%Reshape a 1-by-10 vector into a 5-by-2 matrix.
Ar = 1:10;
Br = reshape(Ar,[5,2]);
%{
format short 
Fixed-point with 4 decimal digits for: 0.001 ≤ numbers 1000 Otherwise display format short e.
format long
Fixed-point with 15 decimal digits for: 0.001 ≤ number ≤ 100 Otherwise display format long e.
format short e
Scientific notation with 4 decimal digits.
format long e
Scientific notation with 15 decimal digits
format short g
Best of 5-digit fixed or floating point.
format long g
Best of 15-digit fixed or floating point
format bank
Two decimal digits.
format compact
Eliminates empty lines to allow more lines with information displayed on the screen.
format loose
Adds empty lines (opposite of compact.
%}
%*************************************
%User Defined Anonymous Functions
FA = @(x) 5*x+ 2;
an = FA(5);
mf = FA ([5 6 4]);
%User Defined Inline Functions
f = inline('2*x.^2-3*x+1','x');
fan = f(2);
