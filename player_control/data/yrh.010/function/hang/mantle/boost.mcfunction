# 加速の判定
tag @s add yrh.010.state.hang.mantle.boost

# 上昇中かを見る
execute store result score @s yrh.010.global run data get entity @s Motion[1] 10000
#  ちがったらきる
execute if score @s yrh.010.global matches ..0 run return fail

# 加速
#  ちょい上目にmotionとって、
execute if entity @s[tag=!yrh.010.input.forward,tag=!yrh.010.input.left,tag=!yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=yrh.010.input.forward,tag=yrh.010.input.left,tag=yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=yrh.010.input.forward,tag=!yrh.010.input.left,tag=!yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=yrh.010.input.forward,tag=yrh.010.input.left,tag=!yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~-45 -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=yrh.010.input.forward,tag=!yrh.010.input.left,tag=yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~45 -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=!yrh.010.input.forward,tag=yrh.010.input.left,tag=!yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~-90 -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=!yrh.010.input.forward,tag=!yrh.010.input.left,tag=yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~90 -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=!yrh.010.input.forward,tag=yrh.010.input.left,tag=!yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~-135 -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=!yrh.010.input.forward,tag=!yrh.010.input.left,tag=yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~135 -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion
execute if entity @s[tag=!yrh.010.input.forward,tag=!yrh.010.input.left,tag=!yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~180 -30 positioned ^ ^ ^0.60 summon marker run function yrh.010:get_motion

#  上昇を相殺
scoreboard players operation $y hb.Motion -= @s yrh.010.global
function p_motion:main/xyz