classdef Button < uimoon.core.Component
    % Button class
    %
    % Sintaxis:
    %
    %           hBt = Button(str);
    %           
    % Ejemplo:
    %
    %           app = Frame('App 1');
    %           bt = Button('Button');
    %           bt.SetCallback('disp(''Hello!'')');
    %           app.Add(bt);
    %
    
    properties
    end
    
    methods
        function obj = Button(str)
            obj.hUI = uicontrol('style','push',...
                'String',str,obj.DEFAULT_PROPERTIES{:});
            obj.str_ = str;
            obj.parent_ = get(obj.hUI,'Parent');
        end
        
        function SetCallback(obj,fun)
            set(obj.hUI,'Callback',{fun,obj});
        end
        
        function disp(obj)
            fprintf('%s\n%s\n',class(obj),obj.str_);
        end
    end
    
end

