tp @s[tag=yrh.010.crawl.tmp.0,tag=yrh.010.crawl.tmp.1] ~ ~-100000 ~
tp @s[tag=!yrh.010.crawl.tmp.0,tag=yrh.010.crawl.tmp.1] ~ ~-100000 ~


execute if entity @s[tag=!yrh.010.crawl.tmp.0,tag=!yrh.010.crawl.tmp.1] on passengers run kill @s
execute if entity @s[tag=!yrh.010.crawl.tmp.0,tag=!yrh.010.crawl.tmp.1] run kill @s

tag @s[tag=!yrh.010.crawl.tmp.0] remove yrh.010.crawl.tmp.1
tag @s remove yrh.010.crawl.tmp.0