# インプットのタグを消すよ
tag @s remove yrh.010.input.forward
tag @s remove yrh.010.input.backward
tag @s remove yrh.010.input.left
tag @s remove yrh.010.input.right
tag @s remove yrh.010.input.jump
tag @s remove yrh.010.input.sneak
tag @s remove yrh.010.input.sprint

# 状態のタグを消す

tag @s[tag=yrh.010.state.on_ground] remove yrh.010.state.falling

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