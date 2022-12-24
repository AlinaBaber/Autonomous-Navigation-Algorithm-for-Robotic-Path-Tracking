function Follow_Path(MapType,robotCurrentLocation,robotGoal,robotRadius,NumNode,connection_distance,startLocation,endLocation);

initialOrientation = 0;
if MapType==1
path=[2.0000,1.0000;
      1.9569,1.0546;
      1.8369,2.3856;
      3.2389,6.6106;
      7.8260,8.1330;
      11.4632,10.5857;
      12.0000,10.0000];
end
if MapType==2
path=[3.0000,3.0000;
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
end
robotCurrentPose = [robotCurrentLocation initialOrientation];
robot=Initialize_Robot_Simulator(robotRadius,robotCurrentPose,path);
controller=Path_Following_Controller(path);
Path_Drive_Robot_Waypoints(robotCurrentLocation,robotGoal,controller,robot);
Path_Following_Controller_PRM(MapType,NumNode,connection_distance,startLocation, endLocation,controller);
