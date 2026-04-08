
data merge storage yrh.010:setting {WallJumpCount_1:false}
data merge storage yrh.010:setting {WallJumpCount_2:false}
data merge storage yrh.010:setting {WallJumpCount_3:false}
data merge storage yrh.010:setting {WallJumpCount_4:false}
data merge storage yrh.010:setting {WallJumpCount_5:false}
data merge storage yrh.010:setting {WallJumpCount_6:false}
data merge storage yrh.010:setting {WallJumpCount_7:false}
data merge storage yrh.010:setting {WallJumpCount_8:false}
data merge storage yrh.010:setting {WallJumpCount_9:false}
data merge storage yrh.010:setting {WallJumpCount_0:false}

data merge storage yrh.010:setting {WallRunTime_1:false}
data merge storage yrh.010:setting {WallRunTime_2:false}
data merge storage yrh.010:setting {WallRunTime_3:false}
data merge storage yrh.010:setting {WallRunTime_4:false}
data merge storage yrh.010:setting {WallRunTime_5:false}
data merge storage yrh.010:setting {WallRunTime_6:false}
data merge storage yrh.010:setting {WallRunTime_7:false}
data merge storage yrh.010:setting {WallRunTime_8:false}
data merge storage yrh.010:setting {WallRunTime_9:false}
data merge storage yrh.010:setting {WallRunTime_0:false}

data merge storage yrh.010:setting {TotalWallRunTime_1:false}
data merge storage yrh.010:setting {TotalWallRunTime_2:false}
data merge storage yrh.010:setting {TotalWallRunTime_3:false}
data merge storage yrh.010:setting {TotalWallRunTime_4:false}
data merge storage yrh.010:setting {TotalWallRunTime_5:false}
data merge storage yrh.010:setting {TotalWallRunTime_6:false}
data merge storage yrh.010:setting {TotalWallRunTime_7:false}
data merge storage yrh.010:setting {TotalWallRunTime_8:false}
data merge storage yrh.010:setting {TotalWallRunTime_9:false}
data merge storage yrh.010:setting {TotalWallRunTime_0:false}

data merge storage yrh.010:setting {HangTime_1:false}
data merge storage yrh.010:setting {HangTime_2:false}
data merge storage yrh.010:setting {HangTime_3:false}
data merge storage yrh.010:setting {HangTime_4:false}
data merge storage yrh.010:setting {HangTime_5:false}
data merge storage yrh.010:setting {HangTime_6:false}
data merge storage yrh.010:setting {HangTime_7:false}
data merge storage yrh.010:setting {HangTime_8:false}
data merge storage yrh.010:setting {HangTime_9:false}
data merge storage yrh.010:setting {HangTime_0:false}

execute if score $WallJumpCount yrh.010.global matches 1 run data merge storage yrh.010:setting {WallJumpCount_1:true}
execute if score $WallJumpCount yrh.010.global matches 2 run data merge storage yrh.010:setting {WallJumpCount_2:true}
execute if score $WallJumpCount yrh.010.global matches 3 run data merge storage yrh.010:setting {WallJumpCount_3:true}
execute if score $WallJumpCount yrh.010.global matches 4 run data merge storage yrh.010:setting {WallJumpCount_4:true}
execute if score $WallJumpCount yrh.010.global matches 5 run data merge storage yrh.010:setting {WallJumpCount_5:true}
execute if score $WallJumpCount yrh.010.global matches 6 run data merge storage yrh.010:setting {WallJumpCount_6:true}
execute if score $WallJumpCount yrh.010.global matches 7 run data merge storage yrh.010:setting {WallJumpCount_7:true}
execute if score $WallJumpCount yrh.010.global matches 8 run data merge storage yrh.010:setting {WallJumpCount_8:true}
execute if score $WallJumpCount yrh.010.global matches 9 run data merge storage yrh.010:setting {WallJumpCount_9:true}
execute unless score $WallJumpCount yrh.010.global matches 1..9 run data merge storage yrh.010:setting {WallJumpCount_0:true}

execute if score $WallRunTime yrh.010.global matches 1..10 run data merge storage yrh.010:setting {WallRunTime_1:true}
execute if score $WallRunTime yrh.010.global matches 11..20 run data merge storage yrh.010:setting {WallRunTime_2:true}
execute if score $WallRunTime yrh.010.global matches 21..30 run data merge storage yrh.010:setting {WallRunTime_3:true}
execute if score $WallRunTime yrh.010.global matches 31..40 run data merge storage yrh.010:setting {WallRunTime_4:true}
execute if score $WallRunTime yrh.010.global matches 41..50 run data merge storage yrh.010:setting {WallRunTime_5:true}
execute if score $WallRunTime yrh.010.global matches 51..60 run data merge storage yrh.010:setting {WallRunTime_6:true}
execute if score $WallRunTime yrh.010.global matches 61..80 run data merge storage yrh.010:setting {WallRunTime_7:true}
execute if score $WallRunTime yrh.010.global matches 81..100 run data merge storage yrh.010:setting {WallRunTime_8:true}
execute if score $WallRunTime yrh.010.global matches 101..160 run data merge storage yrh.010:setting {WallRunTime_9:true}
execute unless score $WallRunTime yrh.010.global matches 1..160 run data merge storage yrh.010:setting {WallRunTime_0:true}

execute if score $TotalWallRunTime yrh.010.global matches 1..40 run data merge storage yrh.010:setting {TotalWallRunTime_1:true}
execute if score $TotalWallRunTime yrh.010.global matches 41..80 run data merge storage yrh.010:setting {TotalWallRunTime_2:true}
execute if score $TotalWallRunTime yrh.010.global matches 81..120 run data merge storage yrh.010:setting {TotalWallRunTime_3:true}
execute if score $TotalWallRunTime yrh.010.global matches 121..160 run data merge storage yrh.010:setting {TotalWallRunTime_4:true}
execute if score $TotalWallRunTime yrh.010.global matches 161..200 run data merge storage yrh.010:setting {TotalWallRunTime_5:true}
execute if score $TotalWallRunTime yrh.010.global matches 201..240 run data merge storage yrh.010:setting {TotalWallRunTime_6:true}
execute if score $TotalWallRunTime yrh.010.global matches 241..320 run data merge storage yrh.010:setting {TotalWallRunTime_7:true}
execute if score $TotalWallRunTime yrh.010.global matches 321..400 run data merge storage yrh.010:setting {TotalWallRunTime_8:true}
execute if score $TotalWallRunTime yrh.010.global matches 401..500 run data merge storage yrh.010:setting {TotalWallRunTime_9:true}
execute unless score $TotalWallRunTime yrh.010.global matches 1..500 run data merge storage yrh.010:setting {TotalWallRunTime_0:true}

execute if score $HangTime yrh.010.global matches 1..10 run data merge storage yrh.010:setting {HangTime_1:true}
execute if score $HangTime yrh.010.global matches 11..20 run data merge storage yrh.010:setting {HangTime_2:true}
execute if score $HangTime yrh.010.global matches 21..30 run data merge storage yrh.010:setting {HangTime_3:true}
execute if score $HangTime yrh.010.global matches 31..40 run data merge storage yrh.010:setting {HangTime_4:true}
execute if score $HangTime yrh.010.global matches 41..50 run data merge storage yrh.010:setting {HangTime_5:true}
execute if score $HangTime yrh.010.global matches 51..60 run data merge storage yrh.010:setting {HangTime_6:true}
execute if score $HangTime yrh.010.global matches 61..80 run data merge storage yrh.010:setting {HangTime_7:true}
execute if score $HangTime yrh.010.global matches 81..100 run data merge storage yrh.010:setting {HangTime_8:true}
execute if score $HangTime yrh.010.global matches 101..160 run data merge storage yrh.010:setting {HangTime_9:true}
execute unless score $HangTime yrh.010.global matches 1..160 run data merge storage yrh.010:setting {HangTime_0:true}


# dynamic run command ように再度トリガーを有効化
scoreboard players reset @s yrh.010.setting
scoreboard players enable @s yrh.010.setting

# マクロの形がマクロとして扱われるのを避けるためにconfirmのトリガーをマクロで入れる
data merge storage yrh.010:setting {command:"/trigger yrh.010.setting set 20$(walljumpcount)$(wallruntime)$(totalwallruntime)$(hangtime)"}

# ダイアログ表示
function yrh.010:dialog/setting2 with storage yrh.010:setting
