# marker near Pos 0.0 0.0 0.0  
data modify storage yrh.010:global Motion set value [0.0,0.0,0.0]
data modify storage yrh.010:global Motion set from entity @s Pos

execute store result score $x hb.Motion run data get storage yrh.010:global Motion[0] 10000
execute store result score $y hb.Motion run data get storage yrh.010:global Motion[1] 10000
execute store result score $z hb.Motion run data get storage yrh.010:global Motion[2] 10000

kill @s