function [x,e] = mybi(f,a,b,n)
format long;
EE=0.00001;
x1=a;x2=b;
fx1=f(x1);
fx2=f(x2);
if fx1 * fx2 > 0.0
    error('not god interval');
end
disp([ "n" , "x1" , "x2" ,"x3","fx3"])
x3=0.0;
for i =1:n 
%     it=ln((b - a) / EE);
%      disp(it);
    % with tol value
      E=(x2-x1)/(2^n);
       
      
    x3 = (x1+x2)/2;
    fx3 = f(x3);
    disp([ i , x1 , x2 ,x3,fx3,E])
    if fx3 ==0
        break
    end
    if fx1 * fx3<0
        x2 = x3;
    else
        x1=x3;
    end

end
disp("root is")
disp(x3)
x=x3;
e=0;
end