function B=clases_de_equivalencia
% Función que devuelve una matriz B con las clases de equivalencia de las 
% reglas para un AC con dos sitios y tres estados. Para ello, se toma
% como la matriz A de la función 'clases_de_equivalencia_permutaciones'.
% El número de columnas de B es el número de reglas independientes de las 
% 19683 totales. La matriz B tiene 12 filas porque, a lo sumo, hay 12 reglas
% diferentes en cada clase de equivalencia.

A=clases_de_equivalencia_permutaciones;

B=zeros(12,1);
n=0;

    for i=1:3330

        if A(1,i)>=0
            a=base3(A(1,i));
        
            R=a(1)*3^0+a(4)*3^1+a(7)*3^2+a(2)*3^3+a(5)*3^4+a(8)*3^5+...
                a(3)*3^6+a(6)*3^7+a(9)*3^8; % Regla reflejada de A(1,i)

            if A(1,i)<=R
                n=n+1;
                B(1:6,n)=A(1:6,i);
                [row,col]=find(A==R);

                if row(1)==1
                    B(7:12,n)=A(1:6,col(1));
                elseif row(1)==2
                    B(7,n)=A(2,col(1));
                    B(8,n)=A(1,col(1));
                    B(9,n)=A(6,col(1));
                    B(10,n)=A(5,col(1));
                    B(11,n)=A(4,col(1));
                    B(12,n)=A(3,col(1));
                elseif row(1)==3
                    B(7,n)=A(3,col(1));
                    B(8,n)=A(5,col(1));
                    B(9,n)=A(1,col(1));
                    B(10,n)=A(6,col(1));
                    B(11,n)=A(2,col(1));
                    B(12,n)=A(4,col(1));
                elseif row(1)==4
                    B(7,n)=A(4,col(1));
                    B(8,n)=A(6,col(1));
                    B(9,n)=A(5,col(1));
                    B(10,n)=A(1,col(1));
                    B(11,n)=A(3,col(1));
                    B(12,n)=A(2,col(1));
                elseif row(1)==5
                    B(7,n)=A(5,col(1));
                    B(8,n)=A(3,col(1));
                    B(9,n)=A(4,col(1));
                    B(10,n)=A(2,col(1));
                    B(11,n)=A(6,col(1));
                    B(12,n)=A(1,col(1));
                else
                    B(7,n)=A(6,col(1));
                    B(8,n)=A(4,col(1));
                    B(9,n)=A(2,col(1));
                    B(10,n)=A(3,col(1));
                    B(11,n)=A(1,col(1));
                    B(12,n)=A(5,col(1));
                end

                A(1,col)=-1;
            end

        end

    end
 
    n=size(B,2);
    fprintf('El número total de reglas independientes es: %d \n',n);

end