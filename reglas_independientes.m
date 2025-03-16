function u=reglas_independientes(p1,p2,p3,p4)
% Función que establece el número de clases de equivalencia para un CA con
% dos sitios y tres estados entre las 19683 reglas posibles. El vector u 
% tiene por elementos distintos de cero a las reglas independientes.

u=zeros(1,19683);
n=0;

    for i=1:19683

        if p1(i)==i-1 && p2(i)==i-1 && p3(i)==i-1 && p4(i)==i-1
            n=n+1;
            u(i)=i-1;
        end
    end

    fprintf('El número de reglas independientes por permutaciones es: %d \n',n);

end