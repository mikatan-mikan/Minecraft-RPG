##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=OREMAP_tanzaniteArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/tanzanite/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=OREMAP_tanzaniteArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=200..},tag=OREMAP_tanzaniteArmor] at @s run function mikatanserver:adddim/oremap_one/tanzanite/ore/puttanzaniteore


##tanzanite変換&持ち込み削除
clear @s blue_wool

execute as @s[scores={tanzaniteselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_wool",Count:1b}},distance=..5] run give @s slime_ball{display:{Name:'[{"text":"tanzanite"}]'},CustomModelData:27} 1
execute as @s[scores={tanzaniteselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_wool",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"tanzanite"}]'},CustomModelData:27} 1
execute as @s[scores={tanzaniteselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_wool",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"tanzanite"}]'},CustomModelData:27} 1
execute as @s[scores={tanzaniteselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_wool",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"tanzanite"}]'},CustomModelData:27} 1

execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:blue_wool",Count:1b}},distance=..5] run kill @s
execute as @s[scores={tanzaniteselfcount=1..}] run scoreboard players set @s tanzaniteselfcount 0