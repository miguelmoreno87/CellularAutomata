function v=reflexion_ECA
% Función que calcula las reglas de AC elemental independientes por 
% reflexión

v=0:255;
n=0;

    for i=1:256

        a=binario(i-1); %Se pasa la regla i-1 a binario

        if v(i)==i-1 %La regla aún no tiene regla reflejada

            n=n+1;
            R=a(1)*2^0+a(5)*2^1+a(3)*2^2+a(7)*2^3+a(2)*2^4+a(6)*2^5+...
            a(4)*2^6+a(8)*2^7;
            % R es la regla reflejada de la regla i-1

            % Se cambia la regla R por su equivalente global, i-1. Se 
            % escoge como regla independiente aquella más pequeña
            if R>i-1
                v(R+1)=i-1; 
            else
                v(i)=R;
            end

        end
    end

     fprintf('El número de reglas independientes por reflexión es: %d \n',n);

end