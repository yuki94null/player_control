# 入力中ならキルしない
execute if entity @s[tag=yrh.010.state.on_ground,tag=yrh.010.input.left,tag=yrh.010.input.right,tag=yrh.010.input.sprint] run return fail

# プレイヤーのUUIDをサンプルとして保存
data modify storage yrh.010:global UUID set from entity @s UUID
# 紐づけられたシュルカーなどにtmpタグ付け
execute as @e[tag=yrh.010.slide.shulker.text_display] run function yrh.010:slide/discrim_uuid

# 地下十万にぶっとばして殺すぞ～～～～～～～～
tp @e[tag=yrh.010.slide.tmp] ~ ~-100000 ~
# 乗ってるやつ殺すぞ～～～～～～～～
execute as @e[tag=yrh.010.slide.tmp] on passengers run kill @s
# 乗られてるやつも殺すぞ～～～～～～～～～～～～～
kill @e[tag=yrh.010.slide.tmp]

# クロウルに入ったタグを消します
tag @s remove yrh.010.state.slide