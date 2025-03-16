function y=p3(x)
% Función que, dada una configuración de STCA, genera la configuración
% con los estados 1 y 2 intercambiados.

y=x;

for i=1:length(x)
    if x(i)==1
        y(i)=2;
    elseif x(i)==2
        y(i)=1;
    end
end

end