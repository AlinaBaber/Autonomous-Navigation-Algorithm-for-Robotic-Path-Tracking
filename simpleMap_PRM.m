function simpleMap_PRM(MapType,robotRadius,NumNode,connection_distance,startLocation,endLocation)
map=Import_Maps(MapType);
mapInflated=Robot_Dimensions_Inflate_Map(robotRadius,map);
prm=Construct_PRM_Set_Parameters(mapInflated,NumNode,connection_distance);
%startLocation = [2 1];
%endLocation = [12 10];
if MapType==1
[path,prm]=Find_Feasible_Path(startLocation,endLocation,prm);
end
if MapType==2
[path,prm]=Feasible_Path_Constructed_PRM(startLocation,endLocation,prm);
end
if MapType==3
[path,prm]=Feasible_Path_Constructed_PRM(startLocation,endLocation,prm);
end
