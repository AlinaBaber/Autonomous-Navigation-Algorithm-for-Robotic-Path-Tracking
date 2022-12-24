function varargout = Autonmous_navigation_Algorithm(varargin)
% AUTONMOUS_NAVIGATION_ALGORITHM MATLAB code for Autonmous_navigation_Algorithm.fig
%      AUTONMOUS_NAVIGATION_ALGORITHM, by itself, creates a new AUTONMOUS_NAVIGATION_ALGORITHM or raises the existing
%      singleton*.
%
%      H = AUTONMOUS_NAVIGATION_ALGORITHM returns the handle to a new AUTONMOUS_NAVIGATION_ALGORITHM or the handle to
%      the existing singleton*.
%
%      AUTONMOUS_NAVIGATION_ALGORITHM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AUTONMOUS_NAVIGATION_ALGORITHM.M with the given input arguments.
%
%      AUTONMOUS_NAVIGATION_ALGORITHM('Property','Value',...) creates a new AUTONMOUS_NAVIGATION_ALGORITHM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Autonmous_navigation_Algorithm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Autonmous_navigation_Algorithm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Autonmous_navigation_Algorithm

% Last Modified by GUIDE v2.5 19-Oct-2017 03:25:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Autonmous_navigation_Algorithm_OpeningFcn, ...
                   'gui_OutputFcn',  @Autonmous_navigation_Algorithm_OutputFcn, ...
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


% --- Executes just before Autonmous_navigation_Algorithm is made visible.
function Autonmous_navigation_Algorithm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Autonmous_navigation_Algorithm (see VARARGIN)

% Choose default command line output for Autonmous_navigation_Algorithm
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Autonmous_navigation_Algorithm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Autonmous_navigation_Algorithm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in robot_current_location_val.
function robot_current_location_val_Callback(hObject, eventdata, handles)
% hObject    handle to robot_current_location_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
current= get(hObject,'Value');
path=[2.0000,1.0000;
      1.9569,1.0546;
      1.8369,2.3856;
      3.2389,6.6106;
      7.8260,8.1330;
      11.4632,10.5857;
      12.0000,10.0000;
      3.0000,3.0000;
      4.2287,4.2628;
      7.7686,5.6520;
      6.8570,8.2389;
      19.5613,8.4030;
      33.1838,8.7614;
      31.3248,16.3874;
      41.3317,17.5090;
      48.3017,25.8527;
      49.4926,36.8804;
      44.3936,34.8592;
      45.0000,35.0000];
robot_current_location=path(current,:);
data = getappdata(gcbf, 'metricdata');
data.robot_current_location= robot_current_location;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns robot_current_location_val contents as cell array
%        contents{get(hObject,'Value')} returns selected item from robot_current_location_val


% --- Executes during object creation, after setting all properties.
function robot_current_location_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to robot_current_location_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in robot_goal_location_val.
function robot_goal_location_val_Callback(hObject, eventdata, handles)
% hObject    handle to robot_goal_location_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
goal= get(hObject,'Value');
path=[2.0000,1.0000;
      1.9569,1.0546;
      1.8369,2.3856;
      3.2389,6.6106;
      7.8260,8.1330;
      11.4632,10.5857;
      12.0000,10.0000;
      3.0000,3.0000;
      4.2287,4.2628;
      7.7686,5.6520;
      6.8570,8.2389;
      19.5613,8.4030;
      33.1838,8.7614;
      31.3248,16.3874;
      41.3317,17.5090;
      48.3017,25.8527;
      49.4926,36.8804;
      44.3936,34.8592;
      45.0000,35.0000];
robot_goal_location=path(goal,:);
data = getappdata(gcbf, 'metricdata');
data.robot_goal_location= robot_goal_location;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns robot_goal_location_val contents as cell array
%        contents{get(hObject,'Value')} returns selected item from robot_goal_location_val


% --- Executes during object creation, after setting all properties.
function robot_goal_location_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to robot_goal_location_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in path_planning_btn.
function path_planning_btn_Callback(hObject, eventdata, handles)
% hObject    handle to path_planning_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = getappdata(gcbf, 'metricdata');
MapType=data.map1;
robotRadius=data.robot_radius1;
NumNode=data.num_nodes1;
connection_distance=data.connection_distance1;
startLocation=data.start_location1;
endLocation=data.end_location1;
simpleMap_PRM(MapType,robotRadius,NumNode,connection_distance,startLocation,endLocation)




% --- Executes on selection change in map_type_val.
function map_type_val_Callback(hObject, eventdata, handles)
% hObject    handle to map_type_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
map1 = get(hObject,'Value');
data = getappdata(gcbf, 'metricdata');
data.map1= map1;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns map_type_val contents as cell array
%        contents{get(hObject,'Value')} returns selected item from map_type_val


% --- Executes during object creation, after setting all properties.
function map_type_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to map_type_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in robot_radius_val1.
function robot_radius_val1_Callback(hObject, eventdata, handles)
% hObject    handle to robot_radius_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rad = get(hObject,'Value');
radius=[0,0.1,0.2,0.3,0.4,0.5];
robot_radius1=radius(1,rad);
data = getappdata(gcbf, 'metricdata');
data.robot_radius1= robot_radius1;
setappdata(gcbf, 'metricdata', data);



% Hints: contents = cellstr(get(hObject,'String')) returns robot_radius_val1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from robot_radius_val1


% --- Executes during object creation, after setting all properties.
function robot_radius_val1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to robot_radius_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in no_of_nodes_val1.
function no_of_nodes_val1_Callback(hObject, eventdata, handles)
% hObject    handle to no_of_nodes_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = get(hObject,'Value');
nodes=[10,20,30,40,50,60,70,80,90,100]; 
num_nodes1=nodes(1,num);
data = getappdata(gcbf, 'metricdata');
data.num_nodes1= num_nodes1;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns no_of_nodes_val1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from no_of_nodes_val1


% --- Executes during object creation, after setting all properties.
function no_of_nodes_val1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_of_nodes_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in connection_distance_val.
function connection_distance_val_Callback(hObject, eventdata, handles)
% hObject    handle to connection_distance_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
connection = get(hObject,'Value');
distance=[5,10,15,20,25,30,35,40,45,50];  
connection_distance1=distance(1,connection);
data = getappdata(gcbf, 'metricdata');
data.connection_distance1= connection_distance1;
setappdata(gcbf, 'metricdata', data);


% Hints: contents = cellstr(get(hObject,'String')) returns connection_distance_val contents as cell array
%        contents{get(hObject,'Value')} returns selected item from connection_distance_val


% --- Executes during object creation, after setting all properties.
function connection_distance_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to connection_distance_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in start_location_val1.
function start_location_val1_Callback(hObject, eventdata, handles)
% hObject    handle to start_location_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
start = get(hObject,'Value');
path=[2.0000,1.0000;
      1.9569,1.0546;
      1.8369,2.3856;
      3.2389,6.6106;
      7.8260,8.1330;
      11.4632,10.5857;
      12.0000,10.0000;
      3.0000,3.0000;
      4.2287,4.2628;
      7.7686,5.6520;
      6.8570,8.2389;
      19.5613,8.4030;
      33.1838,8.7614;
      31.3248,16.3874;
      41.3317,17.5090;
      48.3017,25.8527;
      49.4926,36.8804;
      44.3936,34.8592;
      45.0000,35.0000];
start_location1=path(start,:);
data = getappdata(gcbf, 'metricdata');
data.start_location1= start_location1;
setappdata(gcbf, 'metricdata', data);
% Hints: contents = cellstr(get(hObject,'String')) returns start_location_val1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from start_location_val1


% --- Executes during object creation, after setting all properties.
function start_location_val1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to start_location_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in end_location_val1.
function end_location_val1_Callback(hObject, eventdata, handles)
% hObject    handle to end_location_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end_ = get(hObject,'Value');
path=[2.0000,1.0000;
      1.9569,1.0546;
      1.8369,2.3856;
      3.2389,6.6106;
      7.8260,8.1330;
      11.4632,10.5857;
      12.0000,10.0000;
      3.0000,3.0000;
      4.2287,4.2628;
      7.7686,5.6520;
      6.8570,8.2389;
      19.5613,8.4030;
      33.1838,8.7614;
      31.3248,16.3874;
      41.3317,17.5090;
      48.3017,25.8527;
      49.4926,36.8804;
      44.3936,34.8592;
      45.0000,35.0000];
end_location1=path(end_,:);
data = getappdata(gcbf, 'metricdata');
data.end_location1= end_location1;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns end_location_val1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from end_location_val1


% --- Executes during object creation, after setting all properties.
function end_location_val1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to end_location_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in map_type_value1.
function map_type_value1_Callback(hObject, eventdata, handles)
% hObject    handle to map_type_value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
map2 = get(hObject,'Value');
data = getappdata(gcbf, 'metricdata');
data.map2= map2;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns map_type_value1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from map_type_value1


% --- Executes during object creation, after setting all properties.
function map_type_value1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to map_type_value1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in no_of_nodes_val2.
function no_of_nodes_val2_Callback(hObject, eventdata, handles)
% hObject    handle to no_of_nodes_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = get(hObject,'Value');
nodes=[10,20,30,40,50,60,70,80,90,100]; 
num_nodes2=nodes(1,num);
data = getappdata(gcbf, 'metricdata');
data.num_nodes2= num_nodes2;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns no_of_nodes_val2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from no_of_nodes_val2


% --- Executes during object creation, after setting all properties.
function no_of_nodes_val2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to no_of_nodes_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu12


% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in start_location_val2.
function start_location_val2_Callback(hObject, eventdata, handles)
% hObject    handle to start_location_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
start = get(hObject,'Value');
path=[2.0000,1.0000;
      1.9569,1.0546;
      1.8369,2.3856;
      3.2389,6.6106;
      7.8260,8.1330;
      11.4632,10.5857;
      12.0000,10.0000;
      3.0000,3.0000;
      4.2287,4.2628;
      7.7686,5.6520;
      6.8570,8.2389;
      19.5613,8.4030;
      33.1838,8.7614;
      31.3248,16.3874;
      41.3317,17.5090;
      48.3017,25.8527;
      49.4926,36.8804;
      44.3936,34.8592;
      45.0000,35.0000];
start_location2=path(start,:);
data = getappdata(gcbf, 'metricdata');
data.start_location2=start_location2;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns start_location_val2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from start_location_val2


% --- Executes during object creation, after setting all properties.
function start_location_val2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to start_location_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in end_location_val2.
function end_location_val2_Callback(hObject, eventdata, handles)
% hObject    handle to end_location_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end_ = get(hObject,'Value');
path=[2.0000,1.0000;
      1.9569,1.0546;
      1.8369,2.3856;
      3.2389,6.6106;
      7.8260,8.1330;
      11.4632,10.5857;
      12.0000,10.0000;
      3.0000,3.0000;
      4.2287,4.2628;
      7.7686,5.6520;
      6.8570,8.2389;
      19.5613,8.4030;
      33.1838,8.7614;
      31.3248,16.3874;
      41.3317,17.5090;
      48.3017,25.8527;
      49.4926,36.8804;
      44.3936,34.8592;
      45.0000,35.0000];
end_location2=path(end_,:);
data = getappdata(gcbf, 'metricdata');
data.end_location2= end_location2;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns end_location_val2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from end_location_val2


% --- Executes during object creation, after setting all properties.
function end_location_val2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to end_location_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in follow_path_btn.
function follow_path_btn_Callback(hObject, eventdata, handles)
% hObject    handle to follow_path_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = getappdata(gcbf, 'metricdata');
robotCurrentLocation=data.robot_current_location;
robotGoal=data.robot_goal_location;
MapType=data.map2;
robotRadius=data.robot_radius2;
NumNode=data.num_nodes2;
connection_distance=data.connection_distance2;
startLocation=data.start_location2;
endLocation=data.end_location2;
Follow_Path(MapType,robotCurrentLocation,robotGoal,robotRadius,NumNode,connection_distance,startLocation,endLocation);


% --- Executes on selection change in robot_radius_val2.
function robot_radius_val2_Callback(hObject, eventdata, handles)
% hObject    handle to robot_radius_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rad = get(hObject,'Value');
radius=[0,0.1,0.2,0.3,0.4,0.5];
robot_radius2=radius(1,rad);
data = getappdata(gcbf, 'metricdata');
data.robot_radius2= robot_radius2;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns robot_radius_val2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from robot_radius_val2


% --- Executes during object creation, after setting all properties.
function robot_radius_val2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to robot_radius_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in connection_distance_val2.
function connection_distance_val2_Callback(hObject, eventdata, handles)
% hObject    handle to connection_distance_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns connection_distance_val2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from connection_distance_val2


% --- Executes during object creation, after setting all properties.
function connection_distance_val2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to connection_distance_val2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in connection_distance_val1.
function connection_distance_val1_Callback(hObject, eventdata, handles)
% hObject    handle to connection_distance_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
connection = get(hObject,'Value');
distance=[5,10,15,20,25,30,35,40,45,50];  
connection_distance2=distance(1,connection);
data = getappdata(gcbf, 'metricdata');
data.connection_distance2= connection_distance2;
setappdata(gcbf, 'metricdata', data);

% Hints: contents = cellstr(get(hObject,'String')) returns connection_distance_val1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from connection_distance_val1


% --- Executes during object creation, after setting all properties.
function connection_distance_val1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to connection_distance_val1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
