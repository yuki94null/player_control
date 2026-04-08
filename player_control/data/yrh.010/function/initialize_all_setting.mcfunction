data modify storage yrh.010:setting Activate set value true
data modify storage yrh.010:setting WallKick set value true
data modify storage yrh.010:setting WallRun set value true
data modify storage yrh.010:setting WallJump set value true
data modify storage yrh.010:setting Hang set value true
data modify storage yrh.010:setting Mantle set value true
data modify storage yrh.010:setting Crawl set value true
data modify storage yrh.010:setting Slide set value true
data modify storage yrh.010:setting Sit set value true

scoreboard players set $WallJumpCount yrh.010.global 3
scoreboard players set $WallRunTime yrh.010.global 30
scoreboard players set $TotalWallRunTime yrh.010.global 120
scoreboard players set $HangTime yrh.010.global 40