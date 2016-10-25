function App_01_Demo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('App',[700,500]);
app.Center();


app_1 = Frame('Demo',[700,500]);
%app_1.SetSize(400,300);
set(app_1.hUI, 'Visible', 'off');
app_1.Center();
% 
% bx = GridLayout(2,2,1);

% bt1 = Button('A');
% bt2 = Button('B');

% bt1.SetColor('#dadaff');
% bt2.SetBackgroundColor(1,1,0);

% bx.Add(bt1);
% bx.Add(bt2);
% app_1.SetLayout(bx);
% set(bx.hUI,'BackgroundColor','r');


% Layouts
bxv = BoxLayout('v',1);
bxh1 = BoxLayout('h',2);
bxh2 = BoxLayout('h',2);
bxh3 = BoxLayout('h',2);
bxh4 = BoxLayout('h',2);

bxv.Add(bxh1,0.2);
bxv.Add(bxh2,0.2);
bxv.Add(bxh3,0.2);
bxv.AddSpace(0.1);
bxv.Add(bxh4,0.2);

lb1 = Label('Titulo');
txt1 = TextField('');
bxh1.Add(lb1,1);
bxh1.Add(txt1,1);

lb2 = Label('E-mail');
txt2 = TextField('');
bxh2.Add(lb2,0.3);
bxh2.Add(txt2,0.7);

lb3 = Label('Address');
txt3 = TextField('');
bxh3.Add(lb3,0.3);
bxh3.Add(txt3,0.7);

ok_bt = Button('OK');
cancel_bt = Button('Cancel');
bxh4.AddSpace(0.1);
bxh4.Add(ok_bt,0.4);
bxh4.Add(cancel_bt,0.4);

% Set Layouts
app.SetLayout(bxv);

% Callbacks
ok_bt.SetCallback(@fun);
cancel_bt.SetCallback(@fun);

    function fun(varargin)
        clicked_button = varargin{3};
        if strcmpi(clicked_button.GetText(),'OK')
            % name = txt1.GetText(); %#ok
            % email = txt2.GetText(); %#ok
            % address = txt3.GetText(); %#ok
            % save('user_data.mat','name','email','address');
            % uimoon.core.MessageBox('Data saved to user_data.mat','uimoon','info')

            set(app.hUI, 'Visible', 'off');
            set(app_1.hUI, 'Visible', 'on');


        else % Cancel case
            app.Close()
        end
    end
end
