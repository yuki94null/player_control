# クロウルのシュルカーをおろしてくる
execute as @e[tag=yrh.010.crawl.shulker.text_display] at @s run function yrh.010:crawl/kill_shulker

# プレイヤーに対して常時実行
execute as @a at @s[gamemode=!spectator] run function yrh.010:player

execute as @a[gamemode=spectator] run function yrh.010:remove_tags