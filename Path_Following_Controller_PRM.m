function Path_Following_Controller_PRM(MapType,NumNodes,ConnectionDistance,startLocation, endLocation,controller)
rosinit();
if MapType==1
% Start Robot Simulator with a simple map
robot = ExampleHelperRobotSimulator('simpleMap',2);
end
if MapType==2
robot = ExampleHelperRobotSimulator('complexMap',2);
end
robot.enableLaser(false);
robot.setRobotSize(robotRadius);
robot.showTrajectory(true);
mapInflated = copy(robot.Map);
inflate(mapInflated,robotRadius);
prm = robotics.PRM(mapInflated);
%prm.NumNodes = 100;
prm.NumNodes=NumNodes;
%prm.ConnectionDistance = 10;
prm.ConnectionDistance=ConnectionDistance;
path = findpath(prm, startLocation, endLocation);
figure,show(prm, 'Map', 'off', 'Roadmap', 'off');
release(controller);
controller.Waypoints = path;
robotCurrentLocation = path(1,:);
robotGoal = path(end,:);
initialOrientation = 0;
robotCurrentPose = [robotCurrentLocation initialOrientation];
robot.setRobotPose(robotCurrentPose);
distanceToGoal = norm(robotCurrentLocation - robotGoal);
goalRadius = 0.1;
reset(controlRate);
while( distanceToGoal > goalRadius )

    % Compute the controller outputs, i.e., the inputs to the robot
    [v, omega] = controller(robot.getRobotPose);

    % Simulate the robot using the controller outputs
    drive(robot, v, omega);

    % Extract current location information from the current pose
    robotCurrentPose = robot.getRobotPose;

    % Re-compute the distance to the goal
    distanceToGoal = norm(robotCurrentPose(1:2) - robotGoal);

    waitfor(controlRate);
end
drive(robot, 0, 0);
delete(robot);