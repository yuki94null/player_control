scoreboard players set $x hb.Motion 0
execute store result score $y hb.Motion run data get entity @s Motion[1] -10000
scoreboard players set $z hb.Motion 0
function p_motion:main/xyz