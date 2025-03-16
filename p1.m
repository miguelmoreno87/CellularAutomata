function y=p1(x)
% Función que, dada una configuración de STCA, genera la configuración
% con los estados 0 y 2 intercambiados.

y=x;

for i=1:length(x)
    if x(i)==0
        y(i)=2;
    elseif x(i)==2
        y(i)=0;
    end
end

end