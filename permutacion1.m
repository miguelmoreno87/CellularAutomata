function v=permutacion1
% Función que calcula el número de reglas independientes por permutación 
% 0<-->2 de las 19683 posibles para un CA con dos sitios y tres estados.
% El elemento 'i' del vector 'v' da la regla i-1 o su equivalente en el 
% caso de no ser una regla independiente.

v=0:19682; % Vector con todas las reglas posibles
n=0; % n es el número de reglas independientes

    for i=1:19683

        a=base3(i-1); %Se pasa a base 3 la regla i-1

        if v(i)==i-1 %La regla aún no tiene equivalente global

            n=n+1;
            R=0;

            % Permutación 0 <--> 2
            for j=1:9
                R=R+(2-a(10-j))*3^(j-1); 
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

    fprintf('El número de reglas independientes por permutación 0<-->2 es: %d \n',n);

end