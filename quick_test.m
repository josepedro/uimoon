% Quick Test UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Layout Demo');
app.SetSize(400,300);
% set(app.hUI, 'HandleVisibility', 'off');
% 
bx = GridLayout(2,2,1);

bt1 = Button('A');
bt2 = Button('B');

bt1.SetColor('#dadaff');
bt2.SetBackgroundColor(1,1,0);

bx.Add(bt1);
bx.Add(bt2);
app.SetLayout(bx);
set(bx.hUI,'BackgroundColor','r');
