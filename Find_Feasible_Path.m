function [path,prm]=Find_Feasible_Path(startLocation,endLocation,prm) 
path = findpath(prm, startLocation, endLocation);
figure,show(prm);
