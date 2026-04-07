
# 検知したタグを消す
function yrh.010:remove_tags


# 入力検知
function yrh.010:input_detection
# 状態検知（フラグなど）
function yrh.010:get_state
# 向いてるほう検知
function yrh.010:get_direction

# 着地時に消すやつ
execute if entity @s[tag=yrh.010.state.on_ground] run function yrh.010:on_ground
# 落下検知
execute unless data entity @s[tag=!yrh.010.state.on_ground] {fall_distance:0.0d} run tag @s add yrh.010.state.falling

# 壁際検知
#  左
execute positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s unless block ^0.45 ^ ^ #yrh.010:thru run function yrh.010:wall_side_left
#  右
execute positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s unless block ^-0.45 ^ ^ #yrh.010:thru run function yrh.010:wall_side_right

#  前
execute positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s unless block ^ ^ ^0.45 #yrh.010:thru run function yrh.010:wall_side_front

#  後ろ
execute positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s unless block ^ ^ ^-0.45 #yrh.010:thru run function yrh.010:wall_side_back

# ウォールキックの処理
execute if data storage yrh.010:setting {Activate:true} \
    if data storage yrh.010:setting {WallKick:true} \
    if entity @s[tag=yrh.010.state.wall_side.back,tag=yrh.010.input.sprint,tag=yrh.010.input.jump,tag=yrh.010.input.backward,tag=!yrh.010.state.on_ground,tag=!yrh.010.state.wall_run,tag=!yrh.010.state.wall_kick.disable] \
    positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s run \
        function yrh.010:wall_kick/main

# ウォールランの処理
# 実行
execute if data storage yrh.010:setting {Activate:true} \
    if data storage yrh.010:setting {WallRun:true} \
    if entity @s[tag=yrh.010.state.wall_side,tag=yrh.010.state.falling,tag=yrh.010.input.forward,tag=yrh.010.input.sprint,tag=yrh.010.input.jump] \
    unless score @s yrh.010.wall_run.time > $WallRunTime yrh.010.global \
    unless score @s yrh.010.wall_run.time.total > $TotalWallRunTime yrh.010.global \
    positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s run \
        function yrh.010:wall_run/main

# 同じ方の壁連打ができないようにする
tag @s[tag=!yrh.010.state.wall_run,tag=yrh.010.state.wall_run.right] add yrh.010.state.wall_run.disable.right
tag @s[tag=!yrh.010.state.wall_run,tag=yrh.010.state.wall_run.left] add yrh.010.state.wall_run.disable.left
