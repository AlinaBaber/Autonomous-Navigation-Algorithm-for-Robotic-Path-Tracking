function Path_Drive_Robot_Waypoints(robotCurrentLocation,robotGoal,controller,robot)
goalRadius = 0.1;
distanceToGoal = norm(robotCurrentLocation - robotGoal);
controlRate = robotics.Rate(10);
while( distanceToGoal > goalRadius )

    % Compute the controller outputs, i.e., the inputs to the robot
    [v, omega] = controller(robot.getRobotPose);

    % Simulate the robot using the controller outputs.
    drive(robot, v, omega);

    % Extract current location information ([X,Y]) from the current pose of the
    % robot
    robotCurrentPose = robot.getRobotPose;

    % Re-compute the distance to the goal
    distanceToGoal = norm(robotCurrentPose(1:2) - robotGoal);

    waitfor(controlRate);

end
delete(robot);