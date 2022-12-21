##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=Fi.De.MineJungleLog] at @s if predicate mikatanserver:oremapdim/orecheck run function mikatanserver:adddim/area/desert/blocks/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=Fi.De.MineJungleLog,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=100..},tag=Fi.De.MineJungleLog] at @s run function mikatanserver:adddim/area/desert/blocks/ore/put_jungle

##amethyst変換&持ち込み削除
clear @s jungle_log

execute as @s[scores={jungleselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_log",Count:1b}},distance=..5] run give @s nautilus_shell{display:{Name:'[{"text":"なつめやしの木"}]'},desert_item:true,CustomModelData:54} 1
execute as @s[scores={jungleselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_log",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s nautilus_shell{display:{Name:'[{"text":"なつめやしの木"}]'},desert_item:true,CustomModelData:54} 1
execute as @s[scores={jungleselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_log",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s nautilus_shell{display:{Name:'[{"text":"なつめやしの木"}]'},desert_item:true,CustomModelData:54} 1
execute as @s[scores={jungleselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_log",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s nautilus_shell{display:{Name:'[{"text":"なつめやしの木"}]'},desert_item:true,CustomModelData:54} 1


execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_log",Count:1b}},distance=..5] run kill @s
execute as @s[scores={jungleselfcount=1..}] run scoreboard players set @s jungleselfcount 0