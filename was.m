
function mt=was(p,left,right,Ns,mode)
%mode 0: normal weights (for general discrete operators)
%mode 1: totalistic weights (sum over neighborhood values)

center = right;
rho=left+right+1;

if mode==0 %normal weights (all operators)
colum = [p.^(center:rho-1)  zeros(1,Ns-rho)  p.^(0:center-1)]';
row = [p.^(center:-1:0) zeros(1,Ns-rho) p.^(rho-1:-1:(center+1))];
mt = sparse(toeplitz(colum ,row));
end

if mode==1 %totalistic weights
colum = [1.^(center:rho-1)  zeros(1,Ns-rho)  1.^(0:center-1)]';
row = [1.^(center:-1:0) zeros(1,Ns-rho) 1.^(rho-1:-1:(center+1))];
mt = sparse(toeplitz(colum ,row));
end

