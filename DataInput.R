#-----------------------Code Description---------------------------------------#
# Notes:
# ver1.0: 20180416, by githubmao
#
# Description: 各个版本的UC-win/Road驾驶模拟输出数据变量重命名。
#              除ver4.0，重命名变量遵循“小驼峰命名法”，使命名后的变量名有意义。
#              含UC-win/Road ver4.0, ver10.0（即NCUT版本）, ver12.0三个版本。
#------------------------------------------------------------------------------#


# UC-win/Road ver12.0数据重命名----
RenameSimDataV12 <- function(data){
  # 重命名UC-win/Road ver12.0版本输出数据变量名。
  #
  # 输入：UC-win/Road ver12.0版本输出数据。
  # 输出：重命名后的数据框。
  
  kSimDataNewName <- c("simTime",         # Time
                       "logTime",         # TimeStamp
                       "type",            # Type
                       "carModel",        # Model
                       "logID",           # ID
                       "customID",        # customID
                       "logDescription",  # description
                       "positionX",       # position X
                       "positionY",       # position Y
                       "positionZ",       # position Z
                       "yawAngle",        # yawAngle
                       "pitchAngle",      # pitchAngle
                       "rollAngle",       # rollAngle
                       "directionX",      # direction X
                       "directionY",      # direction Y
                       "directionZ",      # direction Z
                       "bodyPitchAngle",  # bodyPitchAngle
                       "bodyRollAngle",   # bodyRollAngle
                       "RPM",             # RPM
                       "gearNumber",      # gearNumber
                       "speedXMS",        # speedVectInMetresPerSecond X
                       "speedYMS",        # speedVectInMetresPerSecond Y
                       "speedZMS",        # speedVectInMetresPerSecond Z
                       "speedKMH",        # speedInKmPerHour
                       "speedMS",         # speedInMetresPerSecond
                       "accXMS2",         # localAccelInMetresPerSecond2 X
                       "accYMS2",         # localAccelInMetresPerSecond2 Y
                       "accZMS2",         # localAccelInMetresPerSecond2 Z
                       "bodyRotSpeedYawRS",   # bodyRotSpeedInRadsPerSecond Yaw
                       "bodyRotSpeedPitchRS", # bodyRotSpeedInRadsPerSecond Pitch
                       "bodyRotSpeedRollRS",  # bodyRotSpeedInRadsPerSecond Roll
                       "bodyRotAccYawRS2",    # bodyRotAccelInRadsPerSecond Yaw
                       "bodyRotAccPitchRS2",  # bodyRotAccelInRadsPerSecond Pitch
                       "bodyRotAccRollRS2",   # bodyRotAccelInRadsPerSecond Roll
                       "rotSpeedYawRS",       # rotSpeedInRadsPerSecond Yaw
                       "rotSpeedPitchRS",     # rotSpeedInRadsPerSecond Pitch
                       "rotSpeedRollRS",      # rotSpeedInRadsPerSecond Roll
                       "rotAccYawRS2",        # rotAccelInRadsPerSecond Yaw
                       "rotAccPitchRS2",      # rotAccelInRadsPerSecond Pitch
                       "rotAccRollRS2",       # rotAccelInRadsPerSecond Roll
                       "disTravelled",        # distanceTravelled
                       "steeringValue",       # steering
                       "appSteering",         # appliedSteering
                       "steeringVelocity",    # steeringVelocity
                       "turningCurvature",    # turningCurvature
                       "gasPedal",            # throttle
                       "pedalTorque",         # pedalTorque
                       "appGasPedal",         # appliedThrottle
                       "brakePedal",          # brake
                       "appBrake",            # appliedBrake
                       "lightState",          # lightState
                       "automaticControl",    # automaticControl
                       "dragForce",           # dragForce
                       "carMass",             # mass
                       "carWheelBase",        # wheelBase
                       "centerOfGravityHeight",    # centerOfGravityHeight
                       "centerOfGravityPosition",  # centerOfGravityPosition
                       "rollAxisHeight",           # rollAxisHeight
                       "trailerState",             # trailer
                       "trailerAngle",             # trailerAngle
                       "trailerPitchAngle",        # trailerPitchAngle
                       "trailerWheelbase",         # trailerWheelbase
                       "isInIntersection",         # inIntersection
                       "roadName",                 # road
                       "disFromRoadStart",         # distanceAlongRoad
                       "latestRoad",               # latestRoad
                       "disFromLatestRoadStart",   # distanceAnlongLatestRoad
                       "disToLeftBorder",          # distanceToLeftBorder
                       "disToRightBorder",         # distanceToRightBorder
                       "carriagewayWidth",         # carriagewayWidth
                       "roadOffset",               # offsetFromRoadCenter
                       "laneOffset",               # offsetFromLaneCenter
                       "logitudinalSlope",         # roadLongitudinalSlop
                       "lateralSlope",             # roadLateralSlop
                       "laneNumber",               # laneNumber
                       "laneWidth",                # laneWidth
                       "laneDirectionX",           # laneDirection X
                       "laneDirectionY",           # laneDirection Y
                       "laneDirectionZ",           # laneDirection Z
                       "laneCurvature",            # laneCurvature
                       "isDrivingForward",         # drivingForwards
                       "speedLimit",               # speedLimit
                       "isSpeedOver",              # speedOver
                       "leftLaneOverlap",          # leftLaneOverLap
                       "rightLaneOverlap",         # rightLaneOverLap
                       "collisionWithUser",        # collicionWithUser
                       "pedestrianNumber",         # pedestriansNumber
                       "roadSurface",              # surface
                       "averageFlux")              # averageFlux
  
  names(data) <- kSimDataNewName
  return(data)
}


# NCUT驾驶模拟器数据重命名----
RenameNCUTSimData <- function(data){
  # 重命名NCUT驾驶模拟器输出数据变量名.
  #
  # 输入：NCUT驾驶模拟器输出数据.
  # 输出：重命名后的数据框.
  
  renamesdf.NCUTsimdata <- c("simTime",                  # Time
                             "logType",                  # Type
                             "carModel",                 # Model
                             "logID",                    # ID
                             "logDescription",           # description
                             "positionX",                # position.X
                             "positionY",                # position.Y
                             "positionZ",                # position.Z
                             "yawAngle",                 # yawAngle
                             "pitchAngle",               # pitchAngle
                             "rollAngle",                # rollAngle
                             "directionX",               # direction.X
                             "directionY",               # direction.Y
                             "directionZ",               # direction.Z
                             "bodyPitchAngle",           # bodyPitchAngle
                             "bodyRollAngle",            # bodyRollAngle
                             "RPM",                      # RPM
                             "gearNumber",               # gearNumber
                             "speedXMS",                 # speedVectInMetresPerSecond.X
                             "speedYMS",                 # speedVectInMetresPerSecond.Y
                             "speedZMS",                 # speedVectInMetresPerSecond.Z
                             "speedKH",                  # speedInKmPerHour
                             "speedMS",                  # speedInMetresPerSecond
                             "accXMS2",                  # localAccelInMetresPerSecond2.X
                             "accYMS2",                  # localAccelInMetresPerSecond2.Y
                             "accZMS2",                  # localAccelInMetresPerSecond2.Z
                             "bodyRotSpeedYawRS",        # bodyRotSpeedInRadsPerSecond.Yaw
                             "bodyRotSpeedPitchRS",      # bodyRotSpeedInRadsPerSecond.Pitch
                             "bodyRotSpeedRollRS",       # bodyRotSpeedInRadsPerSecond.Roll
                             "bodyRotAccYawRS2",         # bodyRotAccelInRadsPerSecond.Yaw
                             "bodyRotAccPitchRS2",       # bodyRotAccelInRadsPerSecond.Pitch
                             "bodyRotAccRollRS2",        # bodyRotAccelInRadsPerSecond.Roll
                             "rotSpeedYawRS",            # rotSpeedInRadsPerSecond.Yaw
                             "rotSpeedPitchRS",          # rotSpeedInRadsPerSecond.Pitch
                             "rotSpeedRollRS",           # rotSpeedInRadsPerSecond.Roll
                             "rotAccYawRS2",             # rotAccelInRadsPerSecond.Yaw
                             "rotAccPitchRS2",           # rotAccelInRadsPerSecond.Pitch
                             "rotAccRollRS2",            # rotAccelInRadsPerSecond.Roll
                             "disTravelled",             # distanceTravelled
                             "steeringValue",            # steering
                             "steeringVelocity",         # steeringVelocity
                             "turningCurvature",         # turningCurvature
                             "gasPedal",                 # throttle
                             "brakePedal",               # brake
                             "lightState",               # lightState
                             "automaticControl",         # automaticControl
                             "dragForce",                # dragForce
                             "carMass",                  # mass
                             "carWheelbase",             # wheelBase
                             "centerofGravityHeight",    # centerOfGravityHeight
                             "centerofGravityPosition",  # centerOfGravityPosition
                             "rollAxisHeight",           # rollAxisHeight
                             "trailerState",             # trailer
                             "trailerAngle",             # trailerAngle
                             "trailerPitchAngle",        # trailerPitchAngle
                             "trailerWheelbase",         # trailerWheelbase
                             "isInIntersection",         # inIntersection
                             "roadName",                 # road
                             "disFromRoadStart",         # distanceAlongRoad
                             "disToLeftBorder",          # distanceToLeftBorder
                             "disToRightBorder",         # distanceToRightBorder
                             "carriagewayWidth",         # carriagewayWidth
                             "roadOffset",               # offsetFromRoadCenter
                             "laneOffset",               # offsetFromLaneCenter
                             "longitudinalSlope",        # roadLongitudinalSlope
                             "lateralSlope",             # roadLateralSlope
                             "laneNumber",               # laneNumber
                             "laneWidth",                # laneWidth
                             "laneDirectionX",           # laneDirection.X
                             "laneDirectionY",           # laneDirection.Y
                             "laneDirectionZ",           # laneDirection.Z
                             "laneCurvature",            # laneCurvature
                             "isDrivingForward",         # drivingForwards
                             "speedLimit",               # speedLimit
                             "isSpeedOver",              # speedOver
                             "leftLaneOverlap",          # leftLaneOverLap
                             "rightLaneOverlap",         # rightLaneOverLap
                             "collisionWithUser",        # collisionWithUser
                             "pedestrianNumber",         # pedestriansNumber
                             "roadSurface",              # surface
                             "averageFlux",              # averageFlux
                             "X")                        #X
  
  names(data) <- renamesdf.NCUTsimdata
  return(data)
}


# UC-win/Road ver4.0数据重命名----
RenameSimDataV4 <- function(data){
  # 重命名UC-win/Road ver4.0版本输出数据变量名。
  #
  # 输入：UC-win/Road ver4.0版本输出数据。
  # 输出：重命名后的数据框。
  
  #------------------------------------------------------------------------------#
  kSimDataNewName <- c("Time",         # 锘縠lapsed.time.s.,       # 场景时间，s
                       "Time_carsim",  # CarSim.TruckSim.time.s.,  # CarSim/TruckSim时间，s
                       "Ab_time",      # absolute.time,            # 主机电脑时间，hh:mm:ss:ms
                       "Car_type",     # car.type,                 # 车型
                       "Car_name",     # name,                     # 车辆名称
                       "ID",           # ID,
                       "Position_x",   # position.x.,              # 世界坐标系x坐标
                       "Position_y",   # position.y.,              # 世界坐标系y坐标
                       "Position_z",   # position.z.,              # 世界坐标系z坐标
                       "Direction_x",  # direction.x.,
                       "Direction_y",  # direction.y.,
                       "Direction_z",  # direction.z.,
                       "Yaw",          # yaw.rad.,                 # 偏航角，rad
                       "Pitch",        # pitch.rad.,               # 纵摇角，rad
                       "Roll",         # roll.rad.,                # 翻滚角，rad
                       "Intersection",  # in.intersection,          # 是否为交叉口
                       "Rd",           # road,                     # 道路名称
                       "Dis",          # distance.from.road.start, # 距离道路起点位置，m
                       "Rd_width",     # carriage.way.width,       # 模拟车所在道路宽度，m
                       "Left_bd",      # left.border.distance,     # 模拟车距离道路左侧边缘位置，m
                       "Right_bd",     # right.border.distance,    # 模拟车距离道路右侧边缘位置，m
                       "Tral_dis",     # traveled.distance,        # 模拟车行驶距离，m
                       "Lane_dir",     # lane.direction.rad.,      # 道路方向，rad
                       "Lane_num",     # lane.number,              # 模拟车所在车道号
                       "Lane_width",   # lane.width,               # 模拟车所在车道宽度，m
                       "Lane_offset",  # lane.offset,              # 模拟车偏离所在车道中心线距离，m
                       "Rd_offset",    # road.offset,              # 模拟车偏离所在道路中心线距离，m
                       "Lateral_slope",  # road.lateral.slope.rad.,  # 道路横坡，rad
                       "Longitudinal_slope",  # road.longitudinal.slope,  # 道路纵坡
                       "Gear",                # gear,                     # 模拟车行驶档位
                       "Light",               # light.status,             # 车灯状态
                       "RPM",                 # rpm,                      # 模拟车转速
                       "Speed",               # speed.m.s.,               # 车速，m/s
                       "Speed_x",             # speed.vector_x.m.s.,      # 车速在x方向分量，m/s
                       "Speed_y",             # speed.vector_y.m.s.,      # 车速在y方向分量，m/s
                       "Speed_z",             # speed.vector_z.m.s.,      # 车速在z方向分量，m/s
                       "Acc_sway",            # local.acceleration_sway.m.s.2.,            # 模拟车横向加速度，m/s^2
                       "Acc_heave",           # local.acceleration_heave.m.s.2.,           # 模拟车垂直加速度，m/s^2
                       "Acc_surge",           # local.acceleration_surge.m.s.2.,           # 模拟车纵向加速度，m/s^2
                       "Yaw_speed",           # rotation.speed_yaw.rad.s.,                 # 模拟车yaw角速度，rad/s
                       "Pitch_speed",         # rotation.speed_pitch.rad.s.,               # 模拟车pitch角速度，rad/s
                       "Roll_speed",          # rotation.speed_roll.rad.s.,                # 模拟车roll角速度，rad/s
                       "Acc_yaw",             # rotation.acceleration_yaw.rad.s.2.,        # 模拟车yaw角加速度，rad/s^2
                       "Acc_pitch",           # rotation.acceleration_pitch.rad.s.2.,      # 模拟车pitch角加速度，rad/s^2
                       "Acc_roll",            # rotation.acceleration_roll.rad.s.2.,       # 模拟车roll角加速度，rad/s^2
                       "Steering",            # steering,                 # 方向盘转角
                       "Acc_pedal",           # acceleration.pedal,       # 加速踏板踩踏深度
                       "Brake_pedal",         # brake.pedal,              # 制动踏板踩踏深度
                       "Clutch_pedal",        # clutch.pedal,             # 离合踏板踩踏深度
                       "Hand_brake",          # hand.brake,               # 手刹状态
                       "Key",                 # ignition.key,             # 钥匙开关是否激活
                       "Gear_level",          # gear.lever,               # 模拟车行驶档位
                       "Wiper",               # wiper,                    # 雨刷状态
                       "Horn",                # horn,                     # 喇叭状态
                       "Car_weight",          # car.weight.kg.,           # 模拟车质量，kg
                       "Car_wheelbase",       # car.wheelbase,            # 模拟车轴距，m
                       "Car_width",           # car.width,                # 模拟车宽度，m
                       "Car_length",          # car.length,               # 模拟车长度，m
                       "Car_height",          # car.height,               # 模拟车高度，m
                       "front_left_wheel_x",
                       "front_left_wheel_y",
                       "front_right_wheel_x",
                       "front_right_wheel_y",
                       "rear_left_wheel_x",
                       "rear_left_wheel_y",
                       "rear_right_wheel_x",
                       "rear_right_wheel_y",
                       "TTC_front",   # front.vehicle.TTC.s.,       # 前车TTC，车速小于前车，输出n/a
                       "Dis_front",   # front.vehicle.distance.m.,  # 前车距离
                       "TTC_rear",    # rear.vehicle.TTC.s.,        # 后车TTC
                       "Dis_rear",    # rear.vehicle.distance.m.,   # 后车距离
                       "Speed_rear",  # rear.vehicle.speed.m.s.,    # 后车速度，m/s
                       "road_bumps",
                       "Scen")        # scenario.name               # 场景名称
  
  names(data) <- kSimDataNewName
  return(data)
}