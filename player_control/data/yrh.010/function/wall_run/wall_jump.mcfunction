# スコアを加算
scoreboard players add @s yrh.010.wall_run.jump.count 1

# 左右にそれぞれのモーション値を生成
execute if entity @s[tag=yrh.010.state.wall_side.left] positioned 0.0 0.0 0.0 rotated ~45 -45 positioned ^ ^ ^0.65 summon marker run function yrh.010:get_motion
execute if entity @s[tag=yrh.010.state.wall_side.right] positioned 0.0 0.0 0.0 rotated ~-45 -45 positioned ^ ^ ^0.65 summon marker run function yrh.010:get_motion
# 加える
function p_motion:main/xyz

# ウォールジャンプ時に壁走りの状態をリセット 
tag @s[tag=yrh.010.state.wall_side.left] add yrh.010.state.wall_run.disable.left
tag @s[tag=yrh.010.state.wall_side.left] remove yrh.010.state.wall_run.disable.right

tag @s[tag=yrh.010.state.wall_side.right] add yrh.010.state.wall_run.disable.right
tag @s[tag=yrh.010.state.wall_side.right] remove yrh.010.state.wall_run.disable.left

tag @s remove yrh.010.state.wall_run.right
tag @s remove yrh.010.state.wall_run.left

# タイマーリセット
scoreboard players reset @s yrh.010.wall_run.time




# function yrh.010:wall_run/remove_wall_run_state

# 演出
#  音
playsound entity.breeze.death player @a ~ ~ ~ 1.0 1.0 0.0
#  パーティクル
particle gust ~ ~ ~ 0.0 0.0 0.0 0.01 1 normal @a
execute rotated as @s rotated ~180 50 run particle minecraft:campfire_cosy_smoke ~ ~ ~ ^ ^ ^1000 0.00005 0 normal @a
execute rotated as @s rotated ~160 30 run particle minecraft:campfire_cosy_smoke ~ ~ ~ ^ ^ ^1000 0.00005 0 normal @a
execute rotated as @s rotated ~200 70 run particle minecraft:campfire_cosy_smoke ~ ~ ~ ^ ^ ^1000 0.00005 0 normal @a


# summon block_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,0.001f]},block_state:{Name:"minecraft:glass_pane",Properties:{east:"true",west:"true"}}}