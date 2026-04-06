# インプットを検知するよ
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} run tag @s add yrh.010.input.forward
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} run tag @s add yrh.010.input.backward
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} run tag @s add yrh.010.input.left
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} run tag @s add yrh.010.input.right
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{jump:true}}}} run tag @s add yrh.010.input.jump
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run tag @s add yrh.010.input.sneak
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sprint:true}}}} run tag @s add yrh.010.input.sprint