say try crawl
# 念のためジャンプできないように
attribute @s jump_strength modifier add yrh.010:crawl -1.0 add_multiplied_total

# すでにシュルカー出してたらPosを制御
execute if entity @s[tag=yrh.010.crawl.active] run return run function yrh.010:crawl/set_pos

# クロウル状態に遷移したとき

#  クロウルを始めたタグをつける
tag @s add yrh.010.crawl.active
#  tmpもつけておく
tag @s add yrh.010.crawl.tmp

# シュルカーをdisplayにのっけてalignされないようにする　透明化の1tick待つなどする
summon text_display ~ ~100000.601 ~ {Tags:[yrh.010.crawl.shulker.text_display,yrh.010.crawl.tmp],Passengers:[{id:"minecraft:shulker",Tags:[yrh.010.crawl.shulker],Invulnerable:1b,Silent:1b,NoAI:1b,Glowing:0b,DeathLootTable:"yrh.010:empty",attributes:[{id:"scale",base:0.0625}],active_effects:[{id:"invisibility",duration:-1,show_particles:0b}]}]}

#  entityのcustom_dataであるdataの階層に対応するプレイヤーのUUIDを紐づけ
execute at @s as @e[tag=yrh.010.crawl.tmp,tag=yrh.010.crawl.shulker.text_display] run data modify entity @s data."yrh.010".ownerUUID set from entity @p[tag=yrh.010.crawl.tmp] UUID

#  tmpを外す
tag @e remove yrh.010.crawl.tmp