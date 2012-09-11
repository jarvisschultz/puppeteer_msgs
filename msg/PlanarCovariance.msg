# Just an array of numbers for the covariance matrix of the planar
# system.  Note that the state of the planar system has a dimension of
# 8; 2 configs, 2 kinematic configs, 2 discrete momenta, and 2
# kinematic velocities.  Thus, the covariance matrix has dimension of
# 8x8 for a total of 64 elements
float32[64] covariance
