function v=complementacion_ECA
% Función que calcula las reglas de AC elemental independientes por 
% complementación global

v=0:255;
n=0;

    for i=1:256

        a=binario(i-1); %Se pasa la regla i-1 a binario

        if v(i)==i-1 %La regla aún no tiene equivalente global

            n=n+1;
            R=0;

            for j=1:8
                R=R+(1-a(9-j))*2^(j-1); %R es la regla complementaria de i-1
            end

            % Se cambia la regla R por su equivalente global, i-1. Se 
            % escoge como regla independiente aquella más pequeña
            if R>i-1
                v(R+1)=i-1; 
            else
                v(i)=R;
            end

        end

    end

    fprintf('El número de reglas independientes por complementación global es: %d \n',n);

end

