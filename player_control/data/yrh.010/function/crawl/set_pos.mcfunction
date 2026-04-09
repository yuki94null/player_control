# プレイヤーのUUIDをサンプルにとる
data modify storage yrh.010:global UUID set from entity @s UUID
# 識別を行う
execute as @e[tag=yrh.010.crawl.shulker.text_display] run function yrh.010:crawl/discrim_uuid

# スライドに遷移
execute if entity @s[tag=yrh.010.input.jump] run return run function yrh.010:crawl/slide/main
# 位置を固定
execute at @s rotated ~ 0 run tp @n[tag=yrh.010.crawl.tmp] ^ ^0.601 ^0.15
# 識別のtmpタグ削除
tag @e remove yrh.010.crawl.tmp