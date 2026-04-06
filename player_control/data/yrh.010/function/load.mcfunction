tellraw @a [{"text":"キャラコニングデータパック"}]

# score
scoreboard objectives add yrh.010.global dummy
scoreboard objectives add yrh.010.wall_run.time dummy
scoreboard objectives add yrh.010.wall_run.time.total dummy
scoreboard objectives add yrh.010.wall_run.jump.count dummy

scoreboard players set $WallJumpCount yrh.010.global 3
scoreboard players set $WallRunTime yrh.010.global 30
scoreboard players set $TotalWallRunTime yrh.010.global 120

# setting init
data modify storage yrh.010:setting Activate set value true
data modify storage yrh.010:setting WallRun set value true
data modify storage yrh.010:setting WallJump set value true