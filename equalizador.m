classdef equalizador<handle

    properties
        audio=[]
        y=[]
        Fs=[]
        velocidad=[]
        volumen=[]
    end
    methods
        function setVel(obj,vel)
            obj.velocidad=vel;
        end

        function setVol(obj,vol)
            obj.volumen=vol;
        end
        function setAudioread(obj,naudio)
            obj.audio=naudio;
        end
        
        function player=setLoadPlay(obj)
            [obj.y,obj.Fs]=audioread(obj.audio);
            player=audioplayer(obj.y*obj.volumen,obj.Fs*obj.velocidad);
        end
        function obj=equalizador(velocidad,volumen,nombre)
            obj.setVel(velocidad);
            obj.setVol(volumen);
            obj.setAudioread(nombre);
        end
    end
end