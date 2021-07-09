# Repository containing ROS exercises
# turtlesim_halbeisen

## Folder src
Contains python files for exercise 1

### turtlesim_control.py
Node that allows to control the turtlesim robot over keyboard. ('w':drive forward, 'x':drive backward, 'a':rotate clockwise, 'd':rotate counterclockwise, 's':stop).

### turtlesim_logger.py
node that allows logging of the overall state in a .txt file.

### turtlesim_loggerStopSrvClient.py
Service client which allows to specify the frequency of the data to be recorded. 

### turtlesim_loggerStopSrvClient.py
Service client which allows disabling of the controller.

### turtlesim_statusMonitor.py
node that collects the current state of the turtlesim robot. It publishes a custom message type that encapsulates the overall state of the turtlebot robot. 

## Folder msg

Contains custom Message TurtlesimState.msg
### TurtlesimState.msg
Custom message that collects the current state of turtlesim robot.

## Folder srv

Contains Services 
### Logtimeout.srv
Service for specifying the frequency of data to be recorder. Takes a float64 as input, which is the time to sleep. Returns true if setting the time was successful.

### StopControl.srv
Service for enabling/disabling the node that controls a turtlebot. Set false, if control of robot should be stopped. Returns true, if control disabling was successful. 

## Folder config

Contains configuration files
### node_names.yaml
Defines names for the control, aggregator and logging nodes. 

### output_file.yaml
Defines filename and output path of logger text-file.

### update_frequency.yaml
Sets the aggregation, logging and control rates.

## Folder launch
Contains launch files

### launch_turtlesim_paramters.launch
Sets all parameters used for exercise 1. 

### launch_turtlesim.launch
Start a turtlesim-node, the controller moving the turtlebot, the aggregator and the logger.

## Folder textfiles
Contains txt file from logger with aggregated roboter status

# turtlebot3_halbeisen

## Folder src
Contains python files for exercise 2,3,4

### reach_goal.py
Sensor detects obstacle nearest to turtlesim robot, rotates to the obstacle and drives straight ahead, until the robot has reached the obstacle.

### tcp_client.py
TCP client which connects to TCP server for robot collaboration in the same gazebo world.

### tcp_server.py
TCP server connecting to TCP client.

### visualize_camera.py
Shows camera images in color, greyscale. Additional: shows edge detection of image from roboter camera

### wall_follower.py
First version of wall follower. CURRENTLY NOT WORKING CORRECTLY

### wall_follower2.py
WORKING WALLFOLLOWER. Turtlebot drives straight ahead until it reaches a wall. Follows the wall according to the sensor values. 

## Folder launch
Contains launch files

### launch_reach_goal.launch
Starts reach_goal.py

### launch_tcp_collab.launch
Starts empty world and two turtlebot3 roboter, which communicate with TCP.

### launch_visualize_camera.launch
Starts visualize_camera.py

### launch_visualize_camera.launch
Starts visualize_camera.py

### launch_wall_follower.launch
Starts wall_follower.py

### launch_wall_follower2.launch
Starts wall_follower2.py
