function y=p4(x)
% Función que, dada una configuración de STCA, genera la configuración
% con los estados intercambiados según la permutación cíclica  0-->1, 
% 1-->2, 2-->0.

y=x;

for i=1:length(x)
    if x(i)==0
        y(i)=1;
    elseif x(i)==1
        y(i)=2;
    elseif x(i)==2
        y(i)=0;
    end
end

end