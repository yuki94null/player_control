# タイマーではじく
execute unless score $HangTime yrh.010.global matches -1 if score @s yrh.010.hang.time > $HangTime yrh.010.global run return fail

# モーションyを消して固定
tp @s ~ 0.0 ~
tp @s ~ ~ ~

# タイマーの加算
scoreboard players add @s yrh.010.hang.time 1

# マントルに移行
execute if entity @s[tag=yrh.010.input.jump] run return run function yrh.010:hang/mantle/main

# ハング中のタグ
tag @s add yrh.010.state.hang