# 初期値をセットするためにマクロでダイアログ表示\
    (なんでテキストコンポーネントでデータ使えるのにjsonじゃ使えないんだ)
$dialog show @s {type:"minecraft:multi_action",title:[{"text":"Advanced Control Settings",bold:true}],can_close_with_escape:true,inputs:[\
    {key:"walljumpcount",type:"single_option",label:[{"text":"Wall Jump Count"}],options:[\
        {id:"01",display:[{"text":"1"}],initial:$(WallJumpCount_1)},\
        {id:"02",display:[{"text":"2"}],initial:$(WallJumpCount_2)},\
        {id:"03",display:[{"text":"3","color":gold}],initial:$(WallJumpCount_3)},\
        {id:"04",display:[{"text":"4"}],initial:$(WallJumpCount_4)},\
        {id:"05",display:[{"text":"5"}],initial:$(WallJumpCount_5)},\
        {id:"06",display:[{"text":"6"}],initial:$(WallJumpCount_6)},\
        {id:"07",display:[{"text":"7"}],initial:$(WallJumpCount_7)},\
        {id:"08",display:[{"text":"8"}],initial:$(WallJumpCount_8)},\
        {id:"09",display:[{"text":"9"}],initial:$(WallJumpCount_9)},\
        {id:"00",display:[{"text":"Infinite","color":aqua}],initial:$(WallJumpCount_0)}\
    ]},\
    {key:"wallruntime",type:"single_option",label:[{"text":"Wall Run Time (sec)"}],options:[\
        {id:"01",display:[{"text":"0.5"}],initial:$(WallRunTime_1)},\
        {id:"02",display:[{"text":"1.0"}],initial:$(WallRunTime_2)},\
        {id:"03",display:[{"text":"1.5","color":gold}],initial:$(WallRunTime_3)},\
        {id:"04",display:[{"text":"2.0"}],initial:$(WallRunTime_4)},\
        {id:"05",display:[{"text":"2.5"}],initial:$(WallRunTime_5)},\
        {id:"06",display:[{"text":"3.0"}],initial:$(WallRunTime_6)},\
        {id:"07",display:[{"text":"4.0"}],initial:$(WallRunTime_7)},\
        {id:"08",display:[{"text":"5.0"}],initial:$(WallRunTime_8)},\
        {id:"09",display:[{"text":"7.5"}],initial:$(WallRunTime_9)},\
        {id:"00",display:[{"text":"Infinite","color":aqua}],initial:$(WallRunTime_0)}\
    ]},\
    {key:"totalwallruntime",type:"single_option",label:[{"text":"Total Wall Run Time (sec)"}],options:[\
        {id:"01",display:[{"text":"2"}],initial:$(TotalWallRunTime_1)},\
        {id:"02",display:[{"text":"4"}],initial:$(TotalWallRunTime_2)},\
        {id:"03",display:[{"text":"6","color":gold}],initial:$(TotalWallRunTime_3)},\
        {id:"04",display:[{"text":"8"}],initial:$(TotalWallRunTime_4)},\
        {id:"05",display:[{"text":"10"}],initial:$(TotalWallRunTime_5)},\
        {id:"06",display:[{"text":"12"}],initial:$(TotalWallRunTime_6)},\
        {id:"07",display:[{"text":"16"}],initial:$(TotalWallRunTime_7)},\
        {id:"08",display:[{"text":"20"}],initial:$(TotalWallRunTime_8)},\
        {id:"09",display:[{"text":"25"}],initial:$(TotalWallRunTime_9)},\
        {id:"00",display:[{"text":"Infinite","color":aqua}],initial:$(TotalWallRunTime_0)}\
    ]},\
    {key:"hangtime",type:"single_option",label:[{"text":"Hang Time (sec)"}],options:[\
        {id:"01",display:[{"text":"0.5"}],initial:$(HangTime_1)},\
        {id:"02",display:[{"text":"1.0"}],initial:$(HangTime_2)},\
        {id:"03",display:[{"text":"1.5"}],initial:$(HangTime_3)},\
        {id:"04",display:[{"text":"2.0","color":gold}],initial:$(HangTime_4)},\
        {id:"05",display:[{"text":"2.5"}],initial:$(HangTime_5)},\
        {id:"06",display:[{"text":"3.0"}],initial:$(HangTime_6)},\
        {id:"07",display:[{"text":"4.0"}],initial:$(HangTime_7)},\
        {id:"08",display:[{"text":"5.0"}],initial:$(HangTime_8)},\
        {id:"09",display:[{"text":"7.5"}],initial:$(HangTime_9)},\
        {id:"00",display:[{"text":"Infinite","color":aqua}],initial:$(HangTime_0)}\
    ]},\
    ],\
    actions:[{label:[{"text":"Confirm"}],action:{type:"dynamic/run_command",template:"$(command)"},width:80},{action:{type:"minecraft:run_command",command:"trigger yrh.010.setting set 1"},label:[{"text":"Previous Page"}],width:80},{label:[{"text":"Initialize"}],action:{type:"run_command",command:"/trigger yrh.010.setting set 4"},width:80},{label:[{"text":"Cancel"}],width:80}],columns:1}