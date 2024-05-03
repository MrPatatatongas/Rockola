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
Smoker=["Otro atardecer-Badbunny.mp3";"Memories-David Guetta.ogg";...
    "Shorty Party-Cartel de Santa.mp3";"Hundred_Miles.ogg";...
    "I_took_a_pill_in_Ibiza.wav";"Lou_Lou.wav";"Love_Goes.wav";...
    "Una_vaina_loca.ogg";"Ven_Bailalo.mp4";"Zapata.mp4"];
Ar=Smoker
%Seleccionamos la opcion
k=input('Dame el numero de cancion que deseas reproducir:_');
%Le pedimos al usuario la velocidad y volumen de la cancion
figure(1)
RGB=imread('Alfred_no.jpg');
imshow(RGB);
uicontrol("Style","pushbutton",'String','STOP','Callback','Stop=0')
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

h=equalizador(Velocidad,Volumen,Ar(k));
alpha=h.setLoadPlay;
%Insertamos las monedas para que inicie la rockola
Stop=1;
while Stop
    p=digitalRead(a,2)  %leemos la pulsacion del boton
    tc=tc+p     %Guardamos la cantidad de veces presionado
    switch estado
    %15 pinshis "cases" para cada opcion
        case 1
            if (k==1) && (tc==10)
                warndlg('Haz escogido la cancion de Badbunny - Otro atardecer')
                K=1;    %este apuntador tiene inicializado la cancion 1
                play(alpha)
                Stop=0;
                pause(0.25)
            else
                estado=2;
            end

        case 2
            if (k==2) && (tc==10)
                warndlg('Haz escogido la cancion de David Guetta - Memories')
                K=2;    %este apuntador tiene inicializado la cancion 1
                Stop=0;
                pause(0.25)
            else
                estado=3;
            end

        case 3
            if (k==3) && (tc==10)
                warndlg('Haz escogido la cancion de Cartel de Santa - Shorty Party')
                K=3;    %este apuntador tiene inicializado la cancion 1
                Stop=0;
                pause(0.25)
            else
                estado=1;
            end 
    end
    pause(0.25)
end
