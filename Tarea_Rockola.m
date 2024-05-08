%Rocola madafaka%
clc
clear all
% Definimos las variables
j=1;
ara=0;  arv=0;
xv=0;   xr=0;
K=1;    tc=0;   p=0;
Velocidad=0;    Volumen=0;
muestra=0;
Stop=1;     estado=1;
%Acoplamos el Arduino
warndlg('Espere un momento!')
a=arduino('COM3');
warndlg('Placa acoplada!')
%Enlistamos las canciones
Smoker=["1. Otro atardecer-Badbunny.mp3";"2. Memories-David Guetta.ogg";...
    "3. Shorty Party-Cartel de Santa.mp3";"4. Hundred_Miles.ogg";...
    "5. I_took_a_pill_in_Ibiza.wav";"6. Lou_Lou.wav";"7. Love_Goes.wav";...
    "8. Una_vaina_loca.ogg";"9. Ven_Bailalo.mp4";"10. Zapata.mp4";"11. Animals.mp3";...
    "12. Mirrors - Caravan Palace.mp3";"13. Saeed - Infected Mushroom.mp3";...
    "14. Californication - Red Hot Chili Peppers.mp3";...
    "15. Alan Sutton - TUTANKMON.mp3"];
Ar=Smoker
%Seleccionamos la opcion
k=input('Dame el numero de cancion que deseas reproducir:_');
%Le pedimos al usuario la velocidad y volumen de la cancion
figure(1)
RGB=imread('Alfred_no.jpg');
imshow(RGB);
uicontrol("Style","pushbutton",'String','STOP','Callback','Stop=0')
%Inicializamos el while para los potenciometros
while Stop
    ara=analogRead(a,3);
    arv=analogRead(a,4);
    xv=ara*(2/1023);
    xr=arv*(7/1023);
    Velocidad(j)=xv;
    Volumen(j)=xr;
    muestra(j)=j;

    figure(1)
    subplot(2,1,1)
    g=graphuniversal(Velocidad,'muestra','velocidad (v)','k')
    subplot(2,1,2)
    e=graphuniversal(Volumen,'muestra','volumen (hrtz)','r')
    j=j+1;
    pause(0.25)
end

Velocidad=xv;
Volumen=xr;
%setteamos la velocidad, el volumen y el nombre de la cancion seleccionada
%en equalizador
h=equalizador(Velocidad,Volumen,Ar(k));
alpha=h.setLoadPlay;
%Volvemos a inicializar Stop
Stop=1;
%Pedimos las 10 monedas al usuario
warndlg('Inserte 10 monedas')
%Insertamos las monedas para que inicie la rockola
while Stop  %Usamos este while infinto para leer las pulsaciones
    p=digitalRead(a,2)  %leemos la pulsacion del boton
    tc=tc+p     %Guardamos la cantidad de veces presionado en tc
    switch estado
    %15 pinshis "cases" para cada cancion
        case 1
            if (k==1) && (tc==10)
                warndlg('Haz escogido la cancion de Badbunny - Otro atardecer')
                K=1;    %este apuntador tiene inicializado la cancion 1
                while Stop  %Usamos este while infinito para el menu
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=2;
            end

        case 2
            if (k==2) && (tc==10)
                warndlg('Haz escogido la cancion de David Guetta - Memories')
                K=2;    %este apuntador tiene inicializado la cancion 2
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=3;
            end

        case 3
            if (k==3) && (tc==10)
                warndlg('Haz escogido la cancion de Cartel de Santa - Shorty Party')
                K=3;    %este apuntador tiene inicializado la cancion 3
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=4;
            end
        case 4
            if (k==4) && (tc==10)
                warndlg('Haz escogido la cancion Hundred Miles')
                K=4;    %este apuntador tiene inicializado la cancion 4
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=5;
            end
        case 5
            if (k==5) && (tc==10)
                warndlg('Haz escogido la cancion I took a pill in Ibiza')
                K=5;    %este apuntador tiene inicializado la cancion 5
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=6;
            end
        case 6
            if (k==6) && (tc==10)
                warndlg('Haz escogido la cancion Lou Lou')
                K=6;    %este apuntador tiene inicializado la cancion 6
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=7;
            end
        case 7
            if (k==7) && (tc==10)
                warndlg('Haz escogido la cancion Love Goes')
                K=7;    %este apuntador tiene inicializado la cancion 7
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=8;
            end
        case 8
            if (k==8) && (tc==10)
                warndlg('Haz escogido la cancion Una vaina loca')
                K=8;    %este apuntador tiene inicializado la cancion 8
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=9;
            end
        case 9
            if (k==9) && (tc==10)
                warndlg('Haz escogido la cancion Ven bailalo')
                K=9;    %este apuntador tiene inicializado la cancion 9
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=10;
            end
        case 10
            if (k==10) && (tc==10)
                warndlg('Haz escogido la cancion Zapata')
                K=10;    %este apuntador tiene inicializado la cancion 10
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=11;
            end
        case 11
            if (k==11) && (tc==10)
                warndlg('Haz escogido la cancion Animals')
                K=11;    %este apuntador tiene inicializado la cancion 11
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=12;
            end
        case 12
            if (k==12) && (tc==10)
                warndlg('Haz escogido la cancion Mirrors - Caravan Palace')
                K=12;    %este apuntador tiene inicializado la cancion 11
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=13;
            end
        case 13
            if (k==13) && (tc==10)
                warndlg('Haz escogido la cancion Saeed - Infected Mushroom')
                K=13;    %este apuntador tiene inicializado la cancion 11
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=14;
            end
        case 14
            if (k==14) && (tc==10)
                warndlg('Haz escogido la cancion Californication - RHCP')
                K=14;    %este apuntador tiene inicializado la cancion 11
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=15;
            end
        case 15
            if (k==15) && (tc==10)
                warndlg('Haz escogido la cancion Tutankmon - Alan Sutton')
                K=15;    %este apuntador tiene inicializado la cancion 11
                while Stop
                    Menu_rockola
                end
                pause(0.25)
            else
                estado=1;
            end
    end
    pause(0.25)
end
%Preguntamos por una segunda ronda del programa
opc=questdlg('Desea correr nuevamente el programa',...
    'Ventana emergente','Si','No','No');
if strcmp(opc,'Si')
    Tarea_Rockola
else
    warndlg('Proceso terminado')
end