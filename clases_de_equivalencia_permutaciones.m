function A=clases_de_equivalencia_permutaciones
% Esta función construye una matriz con las clases de equivalencia por
% permutaciones del CA con dos sitios y tres estados.

p1=permutacion1;
p2=permutacion2;
p3=permutacion3;
p4=permutacion4;
u=reglas_independientes(p1,p2,p3,p4);

A=zeros(6,3330);
w=find(u~=0)-1; % Vector con las reglas independientes exceptuando la 0

v=[0 w]; % Vector con las reglas independientes (incluida la 0)

    for i=1:3330
        
        a=base3(v(i)); % Se pasa la regla a base 3

        A(1,i)=v(i);

        for k=1:9
            A(2,i)=A(2,i)+(2-a(10-k))*3^(k-1); % Permutación 1
        end
        
        % Permutación 2
        A(3,i)=0.5*((a(5)-1)*(3*a(5)-2)*3^0+(a(4)-1)*(3*a(4)-2)*3^1+...
            (a(6)-1)*(3*a(6)-2)*3^2+(a(2)-1)*(3*a(2)-2)*3^3+...
            (a(1)-1)*(3*a(1)-2)*3^4+(a(3)-1)*(3*a(3)-2)*3^5+...
            (a(8)-1)*(3*a(8)-2)*3^6+(a(7)-1)*(3*a(7)-2)*3^7+...
            (a(9)-1)*(3*a(9)-2)*3^8);

        % Permutación 3
        A(4,i)=0.5*(a(1)*(7-3*a(1))*3^0+a(3)*(7-3*a(3))*3^1+...
                a(2)*(7-3*a(2))*3^2+a(7)*(7-3*a(7))*3^3+...
                a(9)*(7-3*a(9))*3^4+a(8)*(7-3*a(8))*3^5+...
                a(4)*(7-3*a(4))*3^6+a(6)*(7-3*a(6))*3^7+...
                a(5)*(7-3*a(5))*3^8);

        % Permutación 4
        A(5,i)=0.5*((3*a(9)+1)*(2-a(9))*3^0+(3*a(7)+1)*(2-a(7))*3^1+...
                (3*a(8)+1)*(2-a(8))*3^2+(3*a(3)+1)*(2-a(3))*3^3+...
                (3*a(1)+1)*(2-a(1))*3^4+(3*a(2)+1)*(2-a(2))*3^5+...
                (3*a(6)+1)*(2-a(6))*3^6+(3*a(4)+1)*(2-a(4))*3^7+...
                (3*a(5)+1)*(2-a(5))*3^8);

        % Permutación 5
        A(6,i)=0.5*((3*a(5)-4)*(a(5)-1)*3^0+(3*a(6)-4)*(a(6)-1)*3^1+...
                (3*a(4)-4)*(a(4)-1)*3^2+(3*a(8)-4)*(a(8)-1)*3^3+...
                (3*a(9)-4)*(a(9)-1)*3^4+(3*a(7)-4)*(a(7)-1)*3^5+...
                (3*a(2)-4)*(a(2)-1)*3^6+(3*a(3)-4)*(a(3)-1)*3^7+...
                (3*a(1)-4)*(a(1)-1)*3^8);

    end

end