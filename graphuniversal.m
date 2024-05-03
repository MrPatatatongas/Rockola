classdef graphuniversal<handle
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here

    properties
        X=[];
        labelx=[];
        labely=[];
        color=[];
    end

    methods
        function setX(obj,nx)
            obj.X=nx;
            %UNTITLED2 Construct an instance of this class
            %   Detailed explanation goes here
        end

        function setlabelX(obj,ex)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            obj.labelx=ex;
        end

        function setlabely(obj,ey)
            obj.labely=ey;
        end

        function setColors(obj,ec)
            obj.color=ec;
        end

        function showGraph(obj)
            plot(obj.X,obj.color)
            grid on
            xlabel(obj.labelx)
            ylabel(obj.labely)
        end

        %Constructor de clase
        function obj=graphuniversal(X,eex,eey,eec)
            obj.setX(X);
            obj.setlabelX(eex);
            obj.setlabely(eey);
            obj.setColors(eec);
            obj.showGraph;
        end
    end
end