function a=binario(n)
% Esta función pasa un número n entre 0 y 255 de decimal a binario

a=[0,0,0,0,0,0,0,0];

     for k=7:-1:0 
          a(k+1)=floor(n/2^k);
          n=n-a(k+1)*2^k;
     end

end