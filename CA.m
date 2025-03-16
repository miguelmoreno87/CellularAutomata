function y=CA(R,p,l,r,x0,times,mode)
% Ejemplos con tres colores: 
% p=3, l=0, r=1.
% R variará de 0 a 19682
% Distribución inicial con un valor 1 rodeado de ceros
% CA(4328,3,0,1,[zeros(1,99) 1 zeros(1,99)],199,0)
% Distribución inicial aleatoria
% CA(4328,3,0,1,randi(3,1,199)-1,199,0)
% Ejemplos con dos colores
%CA(1771466136,2,2,2,[zeros(1,61) 1 zeros(1,61)],200,0) 460 iterations
%                                                       poner niter=460
%CA(1771466136,2,2,2,[zeros(1,41) 1 zeros(1,41)],200,0) 60 iterations
figure
Ns=size(x0,2);
Result=x0;
niter=1; %put niter>1 to continue
for iterations=1:niter
    if iterations~=1
        Result=Result(end,:);
    end
for i=2:times+1
    Result=[Result; discoper(R,p,l,r,Result(i-1,:),mode)];
end
w = [Result]; 
y=w;
%To plot the whole thing
w = [w  w(:,Ns)]; 
xsu=[1:1:Ns+1]; tsu=[1:1:times+1]; tsu=times+1-tsu;
surf(xsu,tsu,w-0.1);
view(0,90)
set(gca,'XLim',[0 Ns+1],'YLim',[0 times],'XTick',[],'YTick',[])
grid off
axis off
%OTHER OPTIONS
if times==size(x0,2)
axis square 
end
%shading interp
shading flat
%colormap('copper')
%colormap('hot')
colormap('summer')
%colormap('winter')
%colormap('colorcube')
%colormap('bone')
%colormap('jet')
%iterations
if niter~=1
pause
end
end



%image(64/p*Result)
% imagesc(Result)
% c = distinguishable_colors(p+1);
% colormap(c)
% set(gca,'XTick',[],'YTick',[])
% grid off
% axis off
% y=Result;
% size(y)


%EXAMPLE 1: CA([0 1 1 1 0 1 1 0],2,1,1,[zeros(1,105) 1 zeros(1,105)],300,0)
%CA([0 1 1 1 0 1 1 0],2,1,1,randi(2,1,200)-1,400,0)
%EXAMPLE 2: The B-function, CA([1 2 2 2 3 0 1 2 3 4 0 0 2 4 4 0 1 2 3 4 1 2 2 2 3],5,1,0,dp(5,1,[200:-1:1]),100,0)
%EXAMPLE 2: The B-function, CA([1 2 2 2 3 0 1 2 3 4 0 0 2 4 4 0 1 2 3 4 1 2 2 2 3],5,1,0,randi(5,1,200)-1,100,0)
