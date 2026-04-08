# ダイアログと
execute if score @s yrh.010.setting matches 1 run function yrh.010:dialog/show1
execute if score @s yrh.010.setting matches 2 run function yrh.010:dialog/show2
# initializeの遷移
execute if score @s yrh.010.setting matches 3 run function yrh.010:initialize_setting_activation
execute if score @s yrh.010.setting matches 4 run function yrh.010:initialize_setting_status
# 得た数字列をもとに設定
execute if score @s yrh.010.setting matches 1000000000..1999999999 run function yrh.010:dialog/set_activation
execute if score @s yrh.010.setting matches 2000000000.. run function yrh.010:dialog/set_status_value
# 有効化
scoreboard players reset @s yrh.010.setting
scoreboard players enable @s yrh.010.setting