function varargout = problem3(varargin)
% PROBLEM3 MATLAB code for problem3.fig
%      PROBLEM3, by itself, creates a new PROBLEM3 or raises the existing
%      singleton*.
%
%      H = PROBLEM3 returns the handle to a new PROBLEM3 or the handle to
%      the existing singleton*.
%
%      PROBLEM3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROBLEM3.M with the given input arguments.
%
%      PROBLEM3('Property','Value',...) creates a new PROBLEM3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before problem3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to problem3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help problem3

% Last Modified by GUIDE v2.5 10-Nov-2018 16:18:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @problem3_OpeningFcn, ...
                   'gui_OutputFcn',  @problem3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before problem3 is made visible.
function problem3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to problem3 (see VARARGIN)

% Choose default command line output for problem3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes problem3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = problem3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Apply.
function Apply_Callback(hObject, eventdata, handles)
distri_val=get(handles.Xdistri,'value');
distri_list=get(handles.Xdistri,'string');
distri=distri_list{distri_val};

T_val=get(handles.Tnum,'value');
T_list=get(handles.Tnum,'string');
T_str=T_list{T_val};
T_num=str2num(T_str);


axes(handles.Xpdf)
[p1,p2]=Xdistribution(T_num,distri);

set(handles.p1,'string',p1);
set(handles.p2,'string',p2);

axes(handles.Ypdf)
[Y1,Y2]=Ydistribution(T_num,distri);
set(handles.Y1,'string',Y1);
set(handles.Y2,'string',Y2);
% hObject    handle to Apply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Tnum.
function Tnum_Callback(hObject, eventdata, handles)
% hObject    handle to Tnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Tnum contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Tnum


% --- Executes during object creation, after setting all properties.
function Tnum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Mnum.
function Mnum_Callback(hObject, eventdata, handles)
% hObject    handle to Mnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Mnum contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Mnum


% --- Executes during object creation, after setting all properties.
function Mnum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Mnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function Xpdf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xpdf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate Xpdf


% --- Executes on selection change in Xdistri.
function Xdistri_Callback(hObject, eventdata, handles)
% hObject    handle to Xdistri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Xdistri contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Xdistri


% --- Executes during object creation, after setting all properties.
function Xdistri_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xdistri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function P1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1 as text
%        str2double(get(hObject,'String')) returns contents of p1 as a double


% --- Executes during object creation, after setting all properties.
function p1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_Callback(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2 as text
%        str2double(get(hObject,'String')) returns contents of p2 as a double


% --- Executes during object creation, after setting all properties.
function p2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y1_Callback(hObject, eventdata, handles)
% hObject    handle to Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y1 as text
%        str2double(get(hObject,'String')) returns contents of Y1 as a double


% --- Executes during object creation, after setting all properties.
function Y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y2_Callback(hObject, eventdata, handles)
% hObject    handle to Y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y2 as text
%        str2double(get(hObject,'String')) returns contents of Y2 as a double


% --- Executes during object creation, after setting all properties.
function Y2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
set(handles.n,'string',num2str(round(get(handles.slider4,'value'))));
% n=round(10000*get(handles.slider4,'value'));
% 
% distri_val=get(handles.Xdistri,'value');
% distri_list=get(handles.Xdistri,'string');
% distri=distri_list{distri_val};
% 
% M_val=get(handles.Mnum,'value');
% M_list=get(handles.Mnum,'string');
% M_str=M_list{M_val};
% M_num=str2num(M_str);
% 
% e=get(handles.slider6,'value');
% 
% axes(handles.convergence)
% slider(distri,M_num,n,e)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function n_Callback(hObject, eventdata, handles)
n=str2num(get(handles.n,'string'));

distri_val=get(handles.Xdistri,'value');
distri_list=get(handles.Xdistri,'string');
distri=distri_list{distri_val};

M_val=get(handles.Mnum,'value');
M_list=get(handles.Mnum,'string');
M_str=M_list{M_val};
M_num=str2num(M_str);

e=get(handles.slider6,'value');

axes(handles.convergence)
slider(distri,M_num,e)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ConverApp.
function ConverApp_Callback(hObject, eventdata, handles)
distri_val=get(handles.Xdistri,'value');
distri_list=get(handles.Xdistri,'string');
distri=distri_list{distri_val};

M_val=get(handles.Mnum,'value');
M_list=get(handles.Mnum,'string');
M_str=M_list{M_val};
M_num=str2num(M_str);

e=str2num(get(handles.epsilon,'string'));
n=str2num(get(handles.n,'string'));

axes(handles.convergence)
convergence(distri,M_num,e,n);

axes(handles.Prob)
prob(distri,M_num,e);

% hObject    handle to ConverApp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function text8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
set(handles.nt,'string',num2str(round(100*get(handles.slider5,'value'))));
n=round(100*get(handles.slider5,'value'));

distri_val=get(handles.Xdistri,'value');
distri_list=get(handles.Xdistri,'string');
distri=distri_list{distri_val};

M_val=get(handles.Mnum,'value');
M_list=get(handles.Mnum,'string');
M_str=M_list{M_val};
M_num=str2num(M_str);

e=get(handles.slider6,'value');

axes(handles.convergence)
slider(distri,M_num,n,e)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function nt_Callback(hObject, eventdata, handles)
n=str2num(get(handles.nt,'string'));

distri_val=get(handles.Xdistri,'value');
distri_list=get(handles.Xdistri,'string');
distri=distri_list{distri_val};

M_val=get(handles.Mnum,'value');
M_list=get(handles.Mnum,'string');
M_str=M_list{M_val};
M_num=str2num(M_str);

e=get(handles.slider6,'value');

axes(handles.convergence)
slider(distri,M_num,n,e)
% hObject    handle to nt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nt as text
%        str2double(get(hObject,'String')) returns contents of nt as a double


% --- Executes during object creation, after setting all properties.
function nt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
set(handles.epsilon,'string',num2str(get(handles.slider6,'value')));
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function epsilon_Callback(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsilon as text
%        str2double(get(hObject,'String')) returns contents of epsilon as a double


% --- Executes during object creation, after setting all properties.
function epsilon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function Prob_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Prob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate Prob


% --- Executes on button press in r.
function r_Callback(hObject, eventdata, handles)
distri_val=get(handles.Xdistri,'value');
distri_list=get(handles.Xdistri,'string');
distri=distri_list{distri_val};

M_val=get(handles.Mnum,'value');
M_list=get(handles.Mnum,'string');
M_str=M_list{M_val};
M_num=str2num(M_str);

e=str2num(get(handles.epsilon,'string'));
r=str2num(get(handles.edit14,'string'));

axes(handles.ern)
ern(distri,M_num,r);
% hObject    handle to r (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Law.
function Law_Callback(hObject, eventdata, handles)
distri_val=get(handles.Xdistri,'value');
distri_list=get(handles.Xdistri,'string');
distri=distri_list{distri_val};

M_val=get(handles.Mnum,'value');
M_list=get(handles.Mnum,'string');
M_str=M_list{M_val};
M_num=str2num(M_str);

e=str2num(get(handles.epsilon,'string'));
n=str2num(get(handles.n,'string'));

axes(handles.Tn)
law1(distri,M_num,n);

axes(handles.Ln)
law2(distri,M_num);
% hObject    handle to Law (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
