# this message contains information about steps of optimizations
int32 index # optimization count i.e. this is optimization number X
float64 time # time at start of optimization in optimization world
float64 cost # final cost
float64 dcost # DJoZ
int32 steps # how many steps did we take?
float32 tolerance # required tolerance
bool error # was there an error?
bool done # did we converge?

