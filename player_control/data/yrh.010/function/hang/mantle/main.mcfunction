# マントルを行ったタグ
tag @s add yrh.010.state.hang.mantle
# マントルの回数を加算
scoreboard players add @s yrh.010.hang.mantle.count 1
# １マントルごとにハングの0.5秒タイマーを進める
scoreboard players add @s yrh.010.hang.time 10

# 固定値加速

execute store result score $y hb.Motion run data get entity @s Motion[1] -10000
scoreboard players add $y hb.Motion 7000