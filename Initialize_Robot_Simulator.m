function robot=Initialize_Robot_Simulator(robotRadius,robotCurrentPose,path)
%robotRadius = 0.4;
robot = ExampleHelperRobotSimulator('emptyMap',2);
robot.enableLaser(false);
robot.setRobotSize(robotRadius);
robot.showTrajectory(true);
robot.setRobotPose(robotCurrentPose);
plot(path(:,1), path(:,2),'k--d')
xlim([0 13])
ylim([0 13])