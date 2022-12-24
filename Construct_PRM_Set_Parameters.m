function prm=Construct_PRM_Set_Parameters(mapInflated,NumNode,Connection_Distance)
prm = robotics.PRM;
prm.Map = mapInflated;
%prm.NumNodes = 50;
%prm.ConnectionDistance = 5;
prm.NumNodes = NumNode;
prm.ConnectionDistance = Connection_Distance;