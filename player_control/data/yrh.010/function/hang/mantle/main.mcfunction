# マントルを行ったタグ
tag @s add yrh.010.state.hang.mantle
# マントルの回数を加算
scoreboard players add @s yrh.010.hang.mantle.count 1
# １マントルごとにハングの0.5秒タイマーを進める
scoreboard players add @s yrh.010.hang.time 10

# 固定値加速
scoreboard players set $x hb.Motion 0
scoreboard players set $y hb.Motion 6000
scoreboard players set $z hb.Motion 0
function p_motion:main/xyz