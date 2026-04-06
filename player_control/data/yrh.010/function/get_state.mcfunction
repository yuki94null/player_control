# 状態を検知するﾖ
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player"},flags:{is_sprinting:true}}} run tag @s add yrh.010.state.sprint
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player"},flags:{is_sneaking:true}}} run tag @s add yrh.010.state.sneak
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player"},flags:{is_on_ground:true}}} run tag @s add yrh.010.state.on_ground
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player"},flags:{is_swimming:true}}} run tag @s add yrh.010.state.swimming
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player"},flags:{is_flying:true}}} run tag @s add yrh.010.state.flying
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player"},flags:{is_fall_flying:true}}} run tag @s add yrh.010.state.fall_flying
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player"},flags:{is_in_water:true}}} run tag @s add yrh.010.state.in_water