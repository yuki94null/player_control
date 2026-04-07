tag @s add yrh.010.state.wall_kick.disable

# モーション加える
execute positioned 0.0 0.0 0.0 rotated ~ -30 positioned ^ ^ ^0.75 summon marker run function yrh.010:get_motion
function p_motion:main/xyz

# 演出など
#  音
playsound entity.breeze.death player @a ~ ~ ~ 1.0 2.0 0.0

# パーティクル
particle small_gust ~ ~ ~ 0.25 0.25 0.25 0.01 5 normal @a

attribute @s movement_speed modifier add yrh.010:wall_run 0.2 add_multiplied_total