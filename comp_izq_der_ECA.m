function v=comp_izq_der_ECA
% Función que calcula las reglas de AC elemental independientes por 
% complementación izquierda-derecha.

v=0:255;
n=0;

    for i=1:256

        a=binario(i-1); %Se pasa la regla i-1 a binario

        if v(i)==i-1 %La regla aún no tiene equivalente

            n=n+1;
            R=(1-a(8))*2^0+(1-a(4))*2^1+(1-a(6))*2^2+(1-a(2))*2^3+(1-a(7))*2^4+(1-a(3))*2^5+(1-a(5))*2^6+(1-a(1))*2^7;
            % R es la regla complementaria izquierda-derecha de la regla
            % i-1

            % Se cambia la regla R por su equivalente global, i-1. Se 
            % escoge como regla independiente aquella más pequeña
            if R>i-1
                v(R+1)=i-1; 
            else
                v(i)=R;
            end
        
        end
    end

    fprintf('El número de reglas independientes por complementación izquierda-derecha es: %d \n',n);

end
