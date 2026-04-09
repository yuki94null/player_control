# プレイヤーのUUIDをサンプルにとる
data modify storage yrh.010:global UUID set from entity @s UUID
# 識別を行う
execute as @e[tag=yrh.010.slide.shulker.text_display] run function yrh.010:slide/discrim_uuid
# 位置を固定
execute at @s run tp @n[tag=yrh.010.slide.tmp] ~ ~0.601 ~

# 識別のtmpタグ削除
tag @e remove yrh.010.slide.tmp