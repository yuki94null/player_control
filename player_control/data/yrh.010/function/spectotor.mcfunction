## remove tags で消してるやつ
# インプットのタグを消すよ
tag @s remove yrh.010.input.forward
tag @s remove yrh.010.input.backward
tag @s remove yrh.010.input.left
tag @s remove yrh.010.input.right
tag @s remove yrh.010.input.jump
tag @s remove yrh.010.input.sneak
tag @s remove yrh.010.input.sprint

# 状態のタグを消す

tag @s remove yrh.010.state.falling

tag @s remove yrh.010.state.sprint
tag @s remove yrh.010.state.sneak
tag @s remove yrh.010.state.on_ground
tag @s remove yrh.010.state.swimming
tag @s remove yrh.010.state.flying
tag @s remove yrh.010.state.fall_flying
tag @s remove yrh.010.state.in_water

# direction のタグを消す
tag @s remove yrh.010.direction.north
tag @s remove yrh.010.direction.south
tag @s remove yrh.010.direction.east
tag @s remove yrh.010.direction.west
tag @s remove yrh.010.direction.x
tag @s remove yrh.010.direction.z

# 壁際のタグを消す
tag @s remove yrh.010.state.wall_side
tag @s remove yrh.010.state.wall_side.right
tag @s remove yrh.010.state.wall_side.left
tag @s remove yrh.010.state.wall_side.front
tag @s remove yrh.010.state.wall_side.back

# 壁走りのタグを消す
tag @s remove yrh.010.state.wall_run

# ハングのタグを消す
tag @s remove yrh.010.state.hang





## on groundの時に消してるやつ
tag @s remove yrh.010.state.wall_kick.disable

tag @s remove yrh.010.state.wall_run.right
tag @s remove yrh.010.state.wall_run.left

tag @s remove yrh.010.state.hang.mantle
tag @s remove yrh.010.state.hang.mantle.boost

tag @s remove yrh.010.state.wall_run.disable.right
tag @s remove yrh.010.state.wall_run.disable.left

scoreboard players reset @s yrh.010.wall_run.jump.count
scoreboard players reset @s yrh.010.wall_run.time
scoreboard players reset @s yrh.010.wall_run.time.total
scoreboard players reset @s yrh.010.hang.time
scoreboard players reset @s yrh.010.hang.mantle.count