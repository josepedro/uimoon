classdef Axes < uimoon.core.Component
    % AXES
    
    properties
        hUICont;
    end
    
    methods
        function obj = Axes()
            obj.hUI = uipanel('BackgroundColor','w',...
                'Units','Pixels');
            p_pos = get(obj.hUI,'Position');
            a = axes('Parent',obj.hUI,...
                'NextPlot','Replace',...
                'XLim',[0 p_pos(3)],...
                'YLim',[0 p_pos(4)]);
        end
    end
    
end

