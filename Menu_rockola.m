Stop=1;
estado=1;
while Stop
    choice=menu('Que opcion deseas elegir:_','Play','Pausa','Reaundar','Stop','Salir');
    switch estado
        case 1
            if choice==1
                play(alpha)
            else
                estado=2;
            end
        case 2
            if choice==2
                pause(alpha)
            else
                estado=3;
            end
        case 3
            if choice==3
                resume(alpha)
            else
                estado=4;
            end
        case 4
            if choice==4
                stop(alpha)
            else
                estado=5;
            end
        case 5
            if choice==5
                pause(1)
                Stop=0;
                pause(1)
            else
                estado=1;
            end
    end
end