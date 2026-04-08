# 一応tmpに移して演算
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global = @s yrh.010.setting

# 1
#  一桁目の余りを算出
scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
#  それをもとにマジックナンバーセット
execute if score $Tmp.1 yrh.010.global matches 1 run scoreboard players set $HangTime yrh.010.global 10
execute if score $Tmp.1 yrh.010.global matches 2 run scoreboard players set $HangTime yrh.010.global 20
execute if score $Tmp.1 yrh.010.global matches 3 run scoreboard players set $HangTime yrh.010.global 30
execute if score $Tmp.1 yrh.010.global matches 4 run scoreboard players set $HangTime yrh.010.global 40
execute if score $Tmp.1 yrh.010.global matches 5 run scoreboard players set $HangTime yrh.010.global 50
execute if score $Tmp.1 yrh.010.global matches 6 run scoreboard players set $HangTime yrh.010.global 60
execute if score $Tmp.1 yrh.010.global matches 7 run scoreboard players set $HangTime yrh.010.global 80
execute if score $Tmp.1 yrh.010.global matches 8 run scoreboard players set $HangTime yrh.010.global 100
execute if score $Tmp.1 yrh.010.global matches 9 run scoreboard players set $HangTime yrh.010.global 250
#  無限処理用にマイナスの領域で
execute if score $Tmp.1 yrh.010.global matches 0 run scoreboard players set $HangTime yrh.010.global -1
#  一桁目をおろしてきて算出の対象に
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global

# 以下ほぼ同処理

# 2
scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute if score $Tmp.1 yrh.010.global matches 1 run scoreboard players set $TotalWallRunTime yrh.010.global 40
execute if score $Tmp.1 yrh.010.global matches 2 run scoreboard players set $TotalWallRunTime yrh.010.global 80
execute if score $Tmp.1 yrh.010.global matches 3 run scoreboard players set $TotalWallRunTime yrh.010.global 120
execute if score $Tmp.1 yrh.010.global matches 4 run scoreboard players set $TotalWallRunTime yrh.010.global 160
execute if score $Tmp.1 yrh.010.global matches 5 run scoreboard players set $TotalWallRunTime yrh.010.global 200
execute if score $Tmp.1 yrh.010.global matches 6 run scoreboard players set $TotalWallRunTime yrh.010.global 240
execute if score $Tmp.1 yrh.010.global matches 7 run scoreboard players set $TotalWallRunTime yrh.010.global 320
execute if score $Tmp.1 yrh.010.global matches 8 run scoreboard players set $TotalWallRunTime yrh.010.global 400
execute if score $Tmp.1 yrh.010.global matches 9 run scoreboard players set $TotalWallRunTime yrh.010.global 500
execute if score $Tmp.1 yrh.010.global matches 0 run scoreboard players set $TotalWallRunTime yrh.010.global -1
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 3
scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute if score $Tmp.1 yrh.010.global matches 1 run scoreboard players set $WallRunTime yrh.010.global 10
execute if score $Tmp.1 yrh.010.global matches 2 run scoreboard players set $WallRunTime yrh.010.global 20
execute if score $Tmp.1 yrh.010.global matches 3 run scoreboard players set $WallRunTime yrh.010.global 30
execute if score $Tmp.1 yrh.010.global matches 4 run scoreboard players set $WallRunTime yrh.010.global 40
execute if score $Tmp.1 yrh.010.global matches 5 run scoreboard players set $WallRunTime yrh.010.global 50
execute if score $Tmp.1 yrh.010.global matches 6 run scoreboard players set $WallRunTime yrh.010.global 60
execute if score $Tmp.1 yrh.010.global matches 7 run scoreboard players set $WallRunTime yrh.010.global 80
execute if score $Tmp.1 yrh.010.global matches 8 run scoreboard players set $WallRunTime yrh.010.global 100
execute if score $Tmp.1 yrh.010.global matches 9 run scoreboard players set $WallRunTime yrh.010.global 250
execute if score $Tmp.1 yrh.010.global matches 0 run scoreboard players set $WallRunTime yrh.010.global -1
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 4
# ジャンプは回数で線形なのでそのまま入れる(それによって無限の値が0になる)
execute store result score $WallJumpCount yrh.010.global run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global

execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
