function y=p2(x)
% Función que, dada una configuración de STCA, genera la configuración
% con los estados 0 y 1 intercambiados.

y=x;

for i=1:length(x)
    if x(i)==0
        y(i)=1;
    elseif x(i)==1
        y(i)=0;
    end
end

end