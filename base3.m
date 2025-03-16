function a=base3(n)
% Esta función pasa un número n entre 0 y 19683 de base 10 a base 3.

a=[0,0,0,0,0,0,0,0,0];

     for k=8:-1:0 
          a(k+1)=floor(n/3^k);
          n=n-a(k+1)*3^k;
     end

end