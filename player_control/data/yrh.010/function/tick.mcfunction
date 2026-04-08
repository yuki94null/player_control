# クロウルのシュルカーをおろしてくる
execute as @e[tag=yrh.010.crawl.shulker.text_display] at @s run function yrh.010:crawl/kill_shulker

# Sitのマーカーを消す
execute as @e[tag=yrh.010.sit.text_display] at @s unless entity @p[distance=..0.7] run kill @s

# プレイヤーに対して常時実行
execute as @a at @s run function yrh.010:player