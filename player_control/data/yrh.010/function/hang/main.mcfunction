# タイマーではじく
execute unless score $HangTime yrh.010.global matches -1 if score @s yrh.010.hang.time > $HangTime yrh.010.global run return fail

# タイマーの加算
scoreboard players add @s yrh.010.hang.time 1

scoreboard players set $x hb.Motion 0

execute store result score $y hb.Motion run data get entity @s Motion[1] -15000
execute if score $y hb.Motion matches ..0 run scoreboard players set $y hb.Motion 0

scoreboard players set $z hb.Motion 0

# マントルに移行
execute if entity @s[tag=yrh.010.input.jump] run function yrh.010:hang/mantle/main

function p_motion:main/xyz

# ハング中のタグ
tag @s[tag=!yrh.010.input.jump] add yrh.010.state.hang