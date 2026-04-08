# 設定できる権限を渡す
scoreboard players enable @s yrh.010.setting

# 設定がトリガーされたときに拾う
execute if score @s yrh.010.setting matches 1.. run function yrh.010:dialog/trigger_setting

# 検知したタグを消す
function yrh.010:remove_tags

# オフやスペクなら必要ないのでリターンでブチ切り
execute if data storage yrh.010:setting {Activate:false} run return fail
execute if entity @s[gamemode=spectator] run return fail

# 入力検知
function yrh.010:input_detection
# 状態検知（フラグなど）
function yrh.010:get_state
# 向いてるほう検知
function yrh.010:get_direction
# クロウル状態検知
function yrh.010:get_crawl_state

# スニーク時に変えるやつ
execute if entity @s[tag=yrh.010.state.sneak] run function yrh.010:on_sneak
# 着地時に変えるやつ
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

# ハングの処理
execute if data storage yrh.010:setting {Hang:true} \
    if entity @s[tag=!yrh.010.state.on_ground,tag=yrh.010.input.left,tag=yrh.010.input.right,tag=!yrh.010.state.hang.mantle] \
    positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s \
    unless block ^ ^1.0 ^0.75 #yrh.010:thru if block ^ ^2.0 ^0.75 #yrh.010:thru run \
        function yrh.010:hang/main

#  マントルの加速の処理
execute if data storage yrh.010:setting {Mantle:true} \
    if entity @s[tag=yrh.010.input.sprint,tag=yrh.010.state.hang.mantle,tag=!yrh.010.state.hang.mantle.boost] \
    positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s \
    if block ^ ^ ^0.75 #yrh.010:thru if block ^ ^1.0 ^0.75 #yrh.010:thru if block ^ ^2.0 ^0.75 #yrh.010:thru run \
        function yrh.010:hang/mantle/boost

# ウォールキックの処理
execute if data storage yrh.010:setting {WallKick:true} \
    if entity @s[tag=yrh.010.state.wall_side.back,tag=yrh.010.input.sprint,tag=yrh.010.input.jump,tag=yrh.010.input.backward,tag=!yrh.010.state.on_ground,tag=!yrh.010.state.wall_run,tag=!yrh.010.state.wall_kick.disable,tag=!yrh.010.state.hang.mantle] \
    positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s run \
        function yrh.010:wall_kick/main

# ウォールランの処理
#  実行
execute if data storage yrh.010:setting {WallRun:true} \
    if entity @s[tag=yrh.010.state.wall_side,tag=yrh.010.state.falling,tag=yrh.010.input.forward,tag=yrh.010.input.sprint,tag=yrh.010.input.jump,tag=!yrh.010.state.hang,tag=!yrh.010.state.hang.mantle] \
    positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 \
    positioned as @s run \
        function yrh.010:wall_run/main

#  同じ方の壁連打ができないようにする
tag @s[tag=!yrh.010.state.wall_run,tag=yrh.010.state.wall_run.right] add yrh.010.state.wall_run.disable.right
tag @s[tag=!yrh.010.state.wall_run,tag=yrh.010.state.wall_run.left] add yrh.010.state.wall_run.disable.left

# クロウルの処理
execute if data storage yrh.010:setting {Crawl:true} \
    if entity @s[tag=yrh.010.state.on_ground,tag=yrh.010.input.left,tag=yrh.010.input.right,tag=yrh.010.input.sneak] run \
        function yrh.010:crawl/main

#  解除
execute if entity @s[tag=yrh.010.crawl.active] run \
    function yrh.010:crawl/kill_shulker