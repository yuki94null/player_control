# 失敗
#  disable
execute if entity @s[tag=yrh.010.state.wall_run.disable.right,tag=yrh.010.state.wall_side.right] run return fail
execute if entity @s[tag=yrh.010.state.wall_run.disable.left,tag=yrh.010.state.wall_side.left] run return fail

# ウォールジャンプに遷移 and return
execute if data storage yrh.010:setting {WallJump:true} unless score @s yrh.010.wall_run.jump.count >= $WallJumpCount yrh.010.global if entity @s[tag=yrh.010.state.wall_side.left,tag=yrh.010.input.right] run return run function yrh.010:wall_run/wall_jump
execute if data storage yrh.010:setting {WallJump:true} unless score @s yrh.010.wall_run.jump.count >= $WallJumpCount yrh.010.global if entity @s[tag=yrh.010.state.wall_side.right,tag=yrh.010.input.left] run return run function yrh.010:wall_run/wall_jump

# ウォールラン中のタグをつける
#  ウォールラン中のタグ　毎ティック消す
tag @s add yrh.010.state.wall_run
#  左右壁 着地時かウォールジャンプの時に消す
tag @s[tag=yrh.010.state.wall_side.left] add yrh.010.state.wall_run.left
tag @s[tag=yrh.010.state.wall_side.right] add yrh.010.state.wall_run.right

# タイマーの加算
scoreboard players add @s yrh.010.wall_run.time 1
scoreboard players add @s yrh.010.wall_run.time.total 1

# 絶対値TPと相対値TPでyのモーションを0にする
tp ~ 0.0 ~
tp ~ ~ ~

# 移動が遅いのでモーションを加えて加速
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^0.02 summon marker run function yrh.010:get_motion
function p_motion:main/xyz

# 演出など
#  視野角
attribute @s movement_speed modifier add yrh.010:wall_run 0.2 add_multiplied_total
#  音