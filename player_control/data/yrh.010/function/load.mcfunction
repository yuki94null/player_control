tellraw @a [{"text":"キャラコニングデータパック"}]

# score
scoreboard objectives add yrh.010.global dummy
scoreboard objectives add yrh.010.setting trigger
scoreboard objectives add yrh.010.wall_run.time dummy
scoreboard objectives add yrh.010.wall_run.time.total dummy
scoreboard objectives add yrh.010.wall_run.jump.count dummy
scoreboard objectives add yrh.010.hang.time dummy
scoreboard objectives add yrh.010.hang.mantle.count dummy
scoreboard objectives add yrh.010.sit.time dummy


# 定数
scoreboard players set #10 yrh.010.global 10

# リロード時に設定を破壊しないように
execute unless score $$WallJumpCount yrh.010.global = $$WallJumpCount yrh.010.global run scoreboard players set $WallJumpCount yrh.010.global 3
execute unless score $$WallRunTime yrh.010.global = $$WallRunTime yrh.010.global run scoreboard players set $WallRunTime yrh.010.global 30
execute unless score $$TotalWallRunTime yrh.010.global = $$TotalWallRunTime yrh.010.global run scoreboard players set $TotalWallRunTime yrh.010.global 120
execute unless score $$HangTime yrh.010.global = $$HangTime yrh.010.global run scoreboard players set $HangTime yrh.010.global 40

scoreboard players set #10 yrh.010.global 10

# setting init
execute unless data storage yrh.010:setting Activate run data modify storage yrh.010:setting Activate set value true
execute unless data storage yrh.010:setting WallKick run data modify storage yrh.010:setting WallKick set value true
execute unless data storage yrh.010:setting WallRun run data modify storage yrh.010:setting WallRun set value true
execute unless data storage yrh.010:setting WallJump run data modify storage yrh.010:setting WallJump set value true
execute unless data storage yrh.010:setting Hang run data modify storage yrh.010:setting Hang set value true
execute unless data storage yrh.010:setting Mantle run data modify storage yrh.010:setting Mantle set value true
execute unless data storage yrh.010:setting Crawl run data modify storage yrh.010:setting Crawl set value true
execute unless data storage yrh.010:setting Slide run data modify storage yrh.010:setting Slide set value true
execute unless data storage yrh.010:setting Sit run data modify storage yrh.010:setting Sit set value true