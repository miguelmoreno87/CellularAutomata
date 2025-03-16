function y=discoper(R,p,l,r,x0,mode)   
% mode=0 general; 
%mode=1 totalistic; 
%mode=2 with inert species;
    if mode~=2
    Result=x0;  
    mt=was(p,l,r,size(x0,2),mode);
    prov = mt*x0';
    for j=1:size(x0,2)
        if size(R,2)==1
            localval=dp(p,prov(j),R);
        end
        if size(R,2)>1
            localval=R(1+prov(j));
        end
        Result(j)=localval;
    end
    end
    %
    if mode==2
    Result=x0;  
    mt=was(p,l,r,size(x0,2),0);
    prov = mt*x0';
    seeds = heaviside(x0-p+1./2);
    mt2=was(p,l,r,size(seeds,2),1);
    prov2=mt2*seeds';
    for j=1:size(x0,2)
        if size(R,2)==1
            localval=dp(p,prov(j),R);
        end
        if size(R,2)>1
            localval=R(1+prov(j));
        end
        Result(j)=localval+(x0(j)-localval).*heaviside(prov2(j)-1./2);
    end    
    end        
    y=Result;
    
        
    
    