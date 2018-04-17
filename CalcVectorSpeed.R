# 计算沿道路方向的纵向速度和沿道路横断面的横向速度----
CalcVectorSpeed <- function(data){
  # 根据导入数据框data中的相关变量，计算longitudinal speed和lateral speed.
  #
  # 输入:
  #   data: 重命名后的数据框，含有Direction_x, Direction_y, Lane_dir, Speed_x和
  #     Speed_y等变量.
  #
  # 输出:
  #   含Longitudinal.Speed和Lateral.Speed的新数据框，并包含Lane_dir_x, Lane_dir_y和
  #     Angle.Dir2LaneDir三个变量.
  
  data$Lane_dir_x <- cos(-data$Lane_dir)  # 将基于极坐标系的Lane_dir转换为X-Y坐标系
  data$Lane_dir_y <- sin(-data$Lane_dir)  # 将基于极坐标系的Lane_dir转换为X-Y坐标系
  
  # 模拟车运动方向Direction到车道方向Lane_dir的夹角
  data$Angle.Dir2LaneDir <- acos((data$Direction_x * data$Lane_dir_x +
                                    data$Direction_y * data$Lane_dir_y) /
                                   sqrt(data$Direction_x^2 + data$Direction_y^2) /
                                   sqrt(data$Lane_dir_x^2 + data$Lane_dir_y^2))
  
  data$Longitudinal.Speed <- sqrt(data$Speed_x^2 + data$Speed_y^2) * 
    cos(data$Angle.Dir2LaneDir)  # 沿道路方向的纵向速度  
  
  tmp.data1 <- data[data$Direction_x * data$Lane_dir_y -
                      data$Direction_y * data$Lane_dir_x >= 0, ]
  tmp.data2 <- data[data$Direction_x * data$Lane_dir_y -
                      data$Direction_y * data$Lane_dir_x < 0, ]
  
  tmp.data1$Lateral.Speed <- sqrt(tmp.data1$Speed_x^2 + tmp.data1$Speed_y^2) *
    sin(tmp.data1$Angle.Dir2LaneDir) * (-1)
  tmp.data2$Lateral.Speed <- sqrt(tmp.data2$Speed_x^2 + tmp.data2$Speed_y^2) *
    sin(tmp.data2$Angle.Dir2LaneDir)
  
  results.data <- rbind(tmp.data1, tmp.data2)
  results.data <- results.data[order(results.data$Time),]
  
  return(results.data)
}