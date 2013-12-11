################################################################################
## general topic for any kind of message that I can send to the robots
################################################################################


################################################################################
## First list all of the message types:
################################################################################
# commands:
uint8 REF_POSE		= 112	#'p' | set an (x,y,th) reference pose
uint8 RESET		= 114	#'r' | stop, and reset odometry (winches included)
uint8 STOP		= 113	#'q' | stop robot, reset movement flag
uint8 START		= 109	#'m' | start command (set movement flag)
uint8 MOT_SPEED		= 104	#'h' | shaft angular velocities (winches same speed)
uint8 EXT_SPEED		= 100	#'d' | external velocities (v,w,rdot)(winches same)
uint8 MOT_SPEED_FULL	= 110	#'n' | set shaft velocities for all motors
uint8 EXT_SPEED_FULL	= 105	#'i' | set all external translational speeds
uint8 KIN_CON		= 107	#'k' | run kinematic controller with no winches
uint8 KIN_CON_FULL	= 116	#'t' | run full kinematic controller
# parameters
uint8 SET_CONFIG_FULL	= 97	#'a' | set all configuration variables
uint8 SET_DEF_SPEED	= 115	#'s' | change the default speed for 'p' mode
uint8 SET_POSE		= 108	#'l' | tell robot its current (x,y,th) pose
uint8 SET_HEIGHT	= 98	#'b' | set string height configuration variables
# requests
uint8 POSE_REQ		= 119	#'w' | request robot's (x,y,th) pose
uint8 SPEED_REQ		= 101	#'e' | request current motor speeds
uint8 LEN_REQ		= 99    #'c' | request the lengths of the strings
uint8 CURRENT_TRAJ_REQ  = 122	#'z' | request the motor current trajectory

######################################
# Still need:			
#	- set controller gains
#	- change robot params	
######################################



################################################################################
## now define all of the fields that can be included
################################################################################
# message parameters:
Header header
int32 robot_index
int32 type
int32 number_floats
int32 div

# robot configuration parameters:
float32 default_speed 
# float32 kp_mot
# float32 ki_mot
# float32 kd_mot
# float32 k1_kin
# float32 k2_kin
# float32 width
# float32 dpulley
# float32 dwheel

# angular velocities of motor shaft outputs:
float32 v_left
float32 v_right
float32 v_top_left
float32 v_top_right
float32 v_top

# translational and rotational velocities external:
float32 v_robot
float32 w_robot
float32 rdot_left
float32 rdot_right
float32 rdot

# desired pose information:
float32 x_desired
float32 y_desired
float32 th_desired
float32 height_left_desired
float32 height_right_desired

# reference pose information:
float32 x
float32 y
float32 th
float32 height_left
float32 height_right









