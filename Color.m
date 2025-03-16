function Color(y)

    CO(:,:,:)=zeros(size(y,1),size(y,2),3);

    for i=1:size(y,1)
        for j=1:size(y,2)
            if y(i,j)==0
                CO(i,j,1)=0;
                CO(i,j,2)=0;
                CO(i,j,3)=1;
            elseif y(i,j)==1
                CO(i,j,1)=0;
                CO(i,j,2)=1;
                CO(i,j,3)=0;
            elseif y(i,j)==2
                CO(i,j,1)=1;
                CO(i,j,2)=0;
                CO(i,j,3)=0;
            end
        end
    end

    [X,Y]=meshgrid(1:size(y,2)+1,size(y,1):-1:1);
    figure()
    y(:,size(y,2)+1)=zeros(size(y,1),1);
    surf(X,Y,y,CO);
    view(0,90)
    set(gca,'XLim',[1 size(y,1)],'YLim',[1 size(y,2)],'XTick',[],'YTick',[])
    grid off
    axis off
    shading flat
    axis image

end