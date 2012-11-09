# This is a message for sending information about the standard
# feedforward+feedback control law.  There are two components, a feedforward
# term, and a feedback law.  For the planar system, the feedforward is a 2x1,
# and the feedback gain matrix is a 2x8.
Header header
float32[2] uff # [xc(k+1) r(k+1)]^T
std_msgs/Float32MultiArray K
