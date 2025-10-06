#math:iquat/nvec_to_branch
# math:iquat/_nvec_to调用

# 计算二倍半角正弦
scoreboard players operation inp int = nvec_y int
scoreboard players add inp int 10000
scoreboard players operation inp int *= 20000 int
function math:_sqrt

scoreboard players operation nvec_y int *= -1 int

# 取一半theta, 叉乘计算旋转轴*sin(theta/2)
scoreboard players operation iquat_x int = nvec_z int
scoreboard players operation iquat_x int *= 10000 int
scoreboard players operation iquat_x int /= res int

scoreboard players set iquat_y int 0

scoreboard players operation iquat_z int = nvec_x int
scoreboard players operation iquat_z int *= -10000 int
scoreboard players operation iquat_z int /= res int

# 取一半theta, 点乘计算cos(theta/2)
scoreboard players operation iquat_w int = nvec_y int
scoreboard players remove iquat_w int 10000
scoreboard players operation iquat_w int *= -10000 int
scoreboard players operation iquat_w int /= res int

scoreboard players operation nvec_y int *= -1 int