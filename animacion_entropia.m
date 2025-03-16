function animacion_entropia(S)

    figure();
    xlabel('Tiempo','FontName','Calibri','FontSize',18,'FontWeight','bold');
    ylabel('Entropía','FontName','Calibri','FontSize',18,'FontWeight','bold');
    xlim([0,length(S)]);
    ylim([0,1.05]);
    box on
    hold on
    set(gca,'FontName','Calibri','FontSize',11,'FontWeight','bold'); % Cambia formato ejes
    ax=gca;
    ax.LineWidth=2;

    for j=1:length(S)

        k=0:j-1;
        y=S;
        
        if j~=length(S)
            y(j+1:length(S))=[];
        end

        plot(k,y,'linewidth',3,Color='b');
        pause(0.05);
      
    end