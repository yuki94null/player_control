# 条件切
execute unless entity @s[tag=yrh.010.state.on_ground,tag=yrh.010.input.sprint,x_rotation=75..90] run return run scoreboard players reset @s yrh.010.sit.time
# 動き速いとむり
execute unless predicate {condition:"entity_properties",entity:"this",predicate:{movement:{speed:{max:0.1}}}} run return run scoreboard players reset @s yrh.010.sit.time

# 座るまでのタイマー
scoreboard players add @s yrh.010.sit.time 1
# 満たすまでは切る
execute unless score @s yrh.010.sit.time matches 15.. run return fail
# 満たしたらリセット
scoreboard players reset @s yrh.010.sit.time
# 座るやつ
summon text_display ~ ~ ~ {Tags:[yrh.010.sit.text_display,yrh.010.sit.tmp]}
# 座らせる
ride @s mount @n[tag=yrh.010.sit.tmp]
# tmp消す
tag @e remove yrh.010.sit.tmp