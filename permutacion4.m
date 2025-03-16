function v=permutacion4
% Función que calcula el número de reglas independientes por permutación 
% 0-->1, 1-->2, 2-->0 de las 19683 posibles para un CA con dos sitios y 
% tres estados. El elemento 'i' del vector 'v' da la regla i-1 o su 
% equivalente en el caso de no ser una regla independiente.

v=0:19682; % Vector con todas las reglas posibles
n=0; % n es el número de reglas independientes

    for i=1:19683

        a=base3(i-1); %Se pasa a base 3 la regla i-1

        if v(i)==i-1 %La regla aún no tiene equivalente global

            n=n+1;

            % Permutación 0-->1, 1-->2, 2-->0
            R=0.5*((3*a(9)+1)*(2-a(9))*3^0+(3*a(7)+1)*(2-a(7))*3^1+...
                (3*a(8)+1)*(2-a(8))*3^2+(3*a(3)+1)*(2-a(3))*3^3+...
                (3*a(1)+1)*(2-a(1))*3^4+(3*a(2)+1)*(2-a(2))*3^5+...
                (3*a(6)+1)*(2-a(6))*3^6+(3*a(4)+1)*(2-a(4))*3^7+...
                (3*a(5)+1)*(2-a(5))*3^8);

            % Se cambia la regla R por su equivalente global, i-1. Se 
            % escoge como regla independiente aquella más pequeña
            if R>i-1
                v(R+1)=i-1; 
            else
                v(i)=R;
            end

        end
        
    end

    fprintf(['El número de reglas independientes por permutación 0-->1,' ...
        ' 1-->2, 2-->0 es: %d \n'],n);

end