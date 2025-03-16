

function y=dp(p,k,A)
y=floor(A./p.^(k))-p.*floor(A./p.^(k+1));
end

% if i > 0
%     y=floor(A./p.^(i))-p.*floor(A./p.^(i+1)); 
% else
%     y=floor(A.*p.^(-i))-p.*floor(A.*p.^(-i-1));
% end

%
% 
% y=A;
% pf=p;
% if (size(p,2)&size(p,1))==1
%     pf=p.*ones(size(A,1),size(A,2));
% end
% 
% for j=1:size(A,1)
%     for k=1:size(A,2)
% 
% if i > 0
%     y(j,k)=floor(A(j,k)./pf(j,k).^(i))-pf(j,k).*floor(A(j,k)./pf(j,k).^(i+1)); 
% else
%     y(j,k)=floor(A(j,k).*pf(j,k).^(-i))-pf(j,k).*floor(A(j,k).*pf(j,k).^(-i-1));
% end
% 
%     end
% end

