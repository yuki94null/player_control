# 一応の移動
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global = @s yrh.010.setting

# 全部同じ処理
#  十進数の0-1でそれぞれの桁が対応しているので10で割ったあまりをそのままT Fに代入
#  １０で割ることによって上の桁をおろしてきてまた演算


# 1
execute store result storage yrh.010:setting Sit byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 2
execute store result storage yrh.010:setting Slide byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 3
execute store result storage yrh.010:setting Crawl byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 4
execute store result storage yrh.010:setting Mantle byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 5
execute store result storage yrh.010:setting Hang byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 6
execute store result storage yrh.010:setting WallJump byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 7
execute store result storage yrh.010:setting WallRun byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 8
execute store result storage yrh.010:setting WallKick byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
# 9
execute store result storage yrh.010:setting Activate byte 1.0 run scoreboard players operation $Tmp.1 yrh.010.global %= #10 yrh.010.global
execute store result score $Tmp.1 yrh.010.global run scoreboard players operation $Tmp.0 yrh.010.global /= #10 yrh.010.global
