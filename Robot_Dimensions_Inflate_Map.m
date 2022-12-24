function mapInflated=Robot_Dimensions_Inflate_Map(robotRadius,map)
%robotRadius = 0.2;
mapInflated = copy(map);
inflate(mapInflated,robotRadius);
figure,show(mapInflated);