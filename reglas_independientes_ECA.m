function u=reglas_independientes_ECA(v,w,s)
% Función que establece el número de reglas independientes para un AC, es
% decir establece el número de clases de equivalencia. El vector u tiene por
% elementos distintos de cero las reglas que identifican las clases de
% equivalencia.

n=0; %Número de clases de equivalencia
u=zeros(1,256);

%v debe contener las reglas relacionadas por complementación, w las reglas
%relacionadas por reflexión y s la reglas relacionadas por complementación
%izquierda-derecha.

    for i=1:256

        if v(i)==i-1 && w(i)==i-1 && s(i)==i-1
            n=n+1;
            u(i)=i-1;
        end
    end

    fprintf('El número de reglas independientes es: %d \n',n);

end