execute positioned 0.0 0.0 0.0 rotated ~45 0 positioned ^ ^ ^-0.5 align xz facing -0.5 0.0 -0.5 rotated ~-45 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^0.6 run summon marker ~ ~ ~ {Tags:[yrh.010.tmp]}

execute positioned 1.0 0.0 0.0 if entity @n[tag=yrh.010.tmp,distance=..0.5] run tag @s add yrh.010.direction.east
execute positioned -1.0 0.0 0.0 if entity @n[tag=yrh.010.tmp,distance=..0.5] run tag @s add yrh.010.direction.west
execute positioned 0.0 0.0 1.0 if entity @n[tag=yrh.010.tmp,distance=..0.5] run tag @s add yrh.010.direction.south
execute positioned 0.0 0.0 -1.0 if entity @n[tag=yrh.010.tmp,distance=..0.5] run tag @s add yrh.010.direction.north


execute if entity @s[tag=yrh.010.direction.east] run tag @s add yrh.010.direction.x
execute if entity @s[tag=yrh.010.direction.west] run tag @s add yrh.010.direction.x
execute if entity @s[tag=yrh.010.direction.north] run tag @s add yrh.010.direction.z
execute if entity @s[tag=yrh.010.direction.south] run tag @s add yrh.010.direction.z

kill @e[tag=yrh.010.tmp]