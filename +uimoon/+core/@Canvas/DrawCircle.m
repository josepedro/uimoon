function DrawCircle(obj,cx,cy,r,color)

if nargin < 5
    color = 'k'; % Default: Negro
end
set(obj.hUI,'Units','Pixels');
% get(obj.hComp,'Position');
TData = linspace(0,2*pi);
XData = r*cos(TData) + cx;
YData = r*sin(TData) + cy;
hLine = line(XData,YData);
set(hLine,'Parent',obj.hEUI,...
    'Color',color);
% Embedded UI -> Units: Pixels, for save aspect ratio.
set(obj.hEUI,'Units','Pixels');
set(obj.hEUI,'DataAspectRatio',ones(1,3));
% For layout 
set(obj.hUI,'Units','Normalized');
end