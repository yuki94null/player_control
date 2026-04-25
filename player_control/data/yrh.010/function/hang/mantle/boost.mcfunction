# 加速の判定
tag @s add yrh.010.state.hang.mantle.boost

# 上昇中かを見る
execute store result score @s yrh.010.global run data get entity @s Motion[1] 10000
#  ちがったらきる
execute if score @s yrh.010.global matches ..0 run return fail

# 加速
#  ちょい上目にmotionとって、
# 前
execute if entity @s[tag=yrh.010.input.forward,tag=!yrh.010.input.left,tag=!yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion
# 前左右
execute if entity @s[tag=yrh.010.input.forward,tag=yrh.010.input.left,tag=yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion

# 後ろ
execute if entity @s[tag=!yrh.010.input.forward,tag=!yrh.010.input.left,tag=!yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~180 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion
# 後ろ左右
execute if entity @s[tag=!yrh.010.input.forward,tag=yrh.010.input.left,tag=yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~180 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion

# 左
execute if entity @s[tag=!yrh.010.input.forward,tag=yrh.010.input.left,tag=!yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~-90 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion
# 左前後
execute if entity @s[tag=yrh.010.input.forward,tag=yrh.010.input.left,tag=!yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~-90 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion

# 右
execute if entity @s[tag=!yrh.010.input.forward,tag=!yrh.010.input.left,tag=yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~90 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion
# 右前後
execute if entity @s[tag=yrh.010.input.forward,tag=!yrh.010.input.left,tag=yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~90 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion

# 左前
execute if entity @s[tag=yrh.010.input.forward,tag=yrh.010.input.left,tag=!yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~-45 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion

# 右前
execute if entity @s[tag=yrh.010.input.forward,tag=!yrh.010.input.left,tag=yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~45 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion

# 左後
execute if entity @s[tag=!yrh.010.input.forward,tag=yrh.010.input.left,tag=!yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~-135 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion

# 右後ろ
execute if entity @s[tag=!yrh.010.input.forward,tag=!yrh.010.input.left,tag=yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~135 -30 positioned ^ ^ ^0.625 summon marker run function yrh.010:get_motion

# 無入力
execute if entity @s[tag=!yrh.010.input.forward,tag=!yrh.010.input.left,tag=!yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -90 positioned ^ ^ ^0.50 summon marker run function yrh.010:get_motion
# 全入力
execute if entity @s[tag=yrh.010.input.forward,tag=yrh.010.input.left,tag=yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -90 positioned ^ ^ ^0.50 summon marker run function yrh.010:get_motion
# 前後
execute if entity @s[tag=yrh.010.input.forward,tag=!yrh.010.input.left,tag=!yrh.010.input.right,tag=yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -90 positioned ^ ^ ^0.50 summon marker run function yrh.010:get_motion
# 左右
execute if entity @s[tag=!yrh.010.input.forward,tag=yrh.010.input.left,tag=yrh.010.input.right,tag=!yrh.010.input.backward] positioned 0.0 0.0 0.0 rotated ~ -90 positioned ^ ^ ^0.50 summon marker run function yrh.010:get_motion

#  上昇を相殺
scoreboard players operation $y hb.Motion -= @s yrh.010.global
function p_motion:main/xyz