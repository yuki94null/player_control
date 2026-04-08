# dynamic run command ように再度トリガーを有効化
scoreboard players reset @s yrh.010.setting
scoreboard players enable @s yrh.010.setting

# マクロの形がマクロとして扱われるのを避けるためにconfirmのトリガーをマクロで入れる
data merge storage yrh.010:setting {command:"/trigger yrh.010.setting set 1$(activate)$(wallkick)$(wallrun)$(walljump)$(hang)$(mantle)$(crawl)$(slide)$(sit)"}
# ダイアログ表示
function yrh.010:dialog/setting1 with storage yrh.010:setting