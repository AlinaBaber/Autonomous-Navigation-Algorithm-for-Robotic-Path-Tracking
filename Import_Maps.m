function map=Import_Maps(MapType)
filePath = fullfile(fileparts(which('PathPlanningExample')),'data','exampleMaps.mat');
load(filePath);
whos *Map*
if MapType==1
map = robotics.BinaryOccupancyGrid(simpleMap, 2);
end
if MapType==2
map = robotics.BinaryOccupancyGrid(complexMap, 1);
end
if MapType==3
map = robotics.OccupancyGrid(ternaryMap, 20);
end
figure,show(map);