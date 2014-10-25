cmake_minimum_required(VERSION 2.8.3)
project(puppeteer_msgs)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  std_msgs
  message_generation)

add_message_files(
  FILES
  FullRobotState.msg
  OperatingCondition.msg
  OptimizationData.msg
  PlanarControlLaw.msg
  PlanarCovariance.msg
  PlanarSystemConfig.msg
  PlanarSystemState.msg
  PointPlus.msg
  RobotCommands.msg
  RobotPose.msg
  Robots.msg
  State.msg
  )


add_service_files(
  FILES
  long_command.srv
  OperatingConditionChange.srv
  PlanarControlLawService.srv
  PlanarStateAbsTime.srv
  PlanarSystemService.srv
  position_request.srv
  speed_command.srv
  )


generate_messages(
  DEPENDENCIES geometry_msgs std_msgs
  )

catkin_package()

