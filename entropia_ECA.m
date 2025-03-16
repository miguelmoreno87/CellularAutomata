function [z,S]=entropia_ECA(R,x0,times)

    y=CA(R,2,1,1,x0,times,0); % Patrón espacio-temporal
    Color(y);
    z=y; % Porque luego el patrón se modifica
    S=1:times; % Inicialización arbitrario de la entropía
    p=1:8; % Inicialización arbitraria del vector de probabilidades
    y(:,length(x0)+1)=y(:,1); % Para evaluar condiciones periódicas
    y(:,length(x0)+2)=y(:,2);

    for i=1:times+1

        p(1)=0;
        p(2)=0;
        p(3)=0;
        p(4)=0;
        p(5)=0;
        p(6)=0;
        p(7)=0;
        p(8)=0;

        for j=1:length(x0)

            if y(i,j)==0 && y(i,j+1)==0 && y(i,j+2)==0     % Vecindario 0
                p(1)=p(1)+1;
            elseif y(i,j)==0 && y(i,j+1)==0 && y(i,j+2)==1 % Vecindario 1
                p(2)=p(2)+1;
            elseif y(i,j)==0 && y(i,j+1)==1 && y(i,j+2)==0 % Vecindario 2
                p(3)=p(3)+1;
            elseif y(i,j)==0 && y(i,j+1)==1 && y(i,j+2)==1 % Vecindario 3
                p(4)=p(4)+1;
            elseif y(i,j)==1 && y(i,j+1)==0 && y(i,j+2)==0 % Vecindario 4
                p(5)=p(5)+1;
            elseif y(i,j)==1 && y(i,j+1)==0 && y(i,j+2)==1 % Vecindario 5
                p(6)=p(6)+1;
            elseif y(i,j)==1 && y(i,j+1)==1 && y(i,j+2)==0 % Vecindario 6
                p(7)=p(7)+1;
            elseif y(i,j)==1 && y(i,j+1)==1 && y(i,j+2)==1 % Vecindario 7
                p(8)=p(8)+1;
            end

        end

        p(1)=p(1)/length(x0);
        p(2)=p(2)/length(x0);
        p(3)=p(3)/length(x0);
        p(4)=p(4)/length(x0);
        p(5)=p(5)/length(x0);
        p(6)=p(6)/length(x0);
        p(7)=p(7)/length(x0);
        p(8)=p(8)/length(x0);
        S(i)=0;

        for k=1:8

            if p(k)~=0  % Para resolver indeterminación
                S(i)=S(i)-p(k)*log(p(k))/log(8);
            end

        end

    end

    t=0:times;
    figure()
    plot(t,S,'linewidth',3);
    xlabel('Tiempo','FontName','Calibri','FontSize',18,'FontWeight','bold');
    ylabel('Entropía','FontName','Calibri','FontSize',18,'FontWeight','bold');
    xlim([0,times]);
    ylim([0,1.05]);
    set(gca,'FontName','Calibri','FontSize',11,'FontWeight','bold'); % Cambia formato ejes
    ax=gca;
    ax.LineWidth=2;

end