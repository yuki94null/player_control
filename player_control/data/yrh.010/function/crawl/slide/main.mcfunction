# 地下十万にぶっとばして殺すぞ～～～～～～～～
tp @e[tag=yrh.010.crawl.tmp] ~ ~-100000 ~
# 乗ってるやつ殺すぞ～～～～～～～～
execute as @e[tag=yrh.010.crawl.tmp] on passengers run kill @s
# 乗られてるやつも殺すぞ～～～～～～～～～～～～～
kill @e[tag=yrh.010.crawl.tmp]

# クロウルに入ったタグを消します
tag @s remove yrh.010.crawl.active

# 向いている方向に飛ばす
execute at @s positioned 0.0 0.0 0.0 rotated ~ -30 positioned ^ ^ ^0.25 summon marker run function yrh.010:get_motion
function p_motion:main/xyz