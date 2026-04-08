# 初期値をセットするためにマクロでダイアログ表示\
    (やはりダイアログ、骨が折れる)
$dialog show @s {type:"minecraft:multi_action",title:[{"text":"Advanced Control Settings",bold:true}],can_close_with_escape:true,inputs:[\
    {key:"activate",type:"minecraft:boolean",label:[{"text":"Activate"}],initial:$(Activate),on_true:"1",on_false:"0"},\
    {key:"wallkick",type:"minecraft:boolean",label:[{"text":"WallKick"}],initial:$(WallKick),on_true:"1",on_false:"0"},\
    {key:"wallrun",type:"minecraft:boolean",label:[{"text":"WallRun"}],initial:$(WallRun),on_true:"1",on_false:"0"},\
    {key:"walljump",type:"minecraft:boolean",label:[{"text":"WallJump"}],initial:$(WallJump),on_true:"1",on_false:"0"},\
    {key:"hang",type:"minecraft:boolean",label:[{"text":"Hang"}],initial:$(Hang),on_true:"1",on_false:"0"},\
    {key:"mantle",type:"minecraft:boolean",label:[{"text":"Mantle"}],initial:$(Mantle),on_true:"1",on_false:"0"},\
    {key:"crawl",type:"minecraft:boolean",label:[{"text":"Crawl"}],initial:$(Crawl),on_true:"1",on_false:"0"},\
    {key:"slide",type:"minecraft:boolean",label:[{"text":"Slide"}],initial:$(Slide),on_true:"1",on_false:"0"},\
    {key:"sit",type:"minecraft:boolean",label:[{"text":"Sit"}],initial:$(Sit),on_true:"1",on_false:"0"},\
    ],\
    actions:[{label:[{"text":"Confirm"}],action:{type:"dynamic/run_command",template:"$(command)"},width:80},{label:[{"text":"Cancel"}],width:80},{action:{type:"minecraft:run_command",command:"trigger yrh.010.setting set 2"},label:[{"text":"Next Page"}],width:80},{label:[{"text":"Initialize"}],action:{type:"run_command",command:"/trigger yrh.010.setting set 3"},width:80}],columns:2}