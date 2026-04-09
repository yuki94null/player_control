# 一応初期化
scoreboard players reset $Tmp.0 yrh.010.global
# サンプルのUUIDを移す
data modify storage yrh.010:global targetUUID set from storage yrh.010:global UUID
# 上書きできるかどうかで一致を判定
execute store success score $Tmp.0 yrh.010.global run data modify storage yrh.010:global targetUUID set from entity @s data."yrh.010".ownerUUID
# 一致したやつにタグ付け
execute if score $Tmp.0 yrh.010.global matches 0 run tag @s add yrh.010.slide.tmp