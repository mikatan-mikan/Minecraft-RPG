##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=OREMAP_moon_stoneArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/moon_stone/ore/putbedrock
execute as @e[type=armor_stand,tag=OREMAP_spheneArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/moon_stone/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=OREMAP_moon_stoneArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
scoreboard players add @e[tag=OREMAP_spheneArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=200..},tag=OREMAP_moon_stoneArmor] at @s run function mikatanserver:adddim/oremap_one/moon_stone/ore/putmoonstoneore
execute as @e[scores={removesapAr=200..},tag=OREMAP_spheneArmor] at @s run function mikatanserver:adddim/oremap_one/moon_stone/ore/putspheneore


##moon_stone変換&持ち込み削除
clear @s white_wool
clear @s yellow_concrete
clear @s gold_block

execute as @s[scores={moon_stoneselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_wool",Count:1b}},distance=..5] run give @s slime_ball{display:{Name:'[{"text":"moon_stone"}]'},CustomModelData:29} 1
execute as @s[scores={moon_stoneselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_wool",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"moon_stone"}]'},CustomModelData:29} 1
execute as @s[scores={moon_stoneselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_wool",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"moon_stone"}]'},CustomModelData:29} 1
execute as @s[scores={moon_stoneselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_wool",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"moon_stone"}]'},CustomModelData:29} 1


execute as @s[scores={spheneselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:yellow_concrete",Count:1b}},distance=..5] run give @s slime_ball{display:{Name:'[{"text":"sphene"}]'},CustomModelData:3} 3
execute as @s[scores={spheneselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:yellow_concrete",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"sphene"}]'},CustomModelData:3} 1
execute as @s[scores={spheneselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:yellow_concrete",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"sphene"}]'},CustomModelData:3} 1
execute as @s[scores={spheneselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:yellow_concrete",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"sphene"}]'},CustomModelData:3} 1

execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:white_wool",Count:1b}},distance=..5] run kill @s
execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:yellow_concrete",Count:1b}},distance=..5] run kill @s
execute as @s[scores={moon_stoneselfcount=1..}] run scoreboard players set @s moon_stoneselfcount 0
execute as @s[scores={spheneselfcount=1..}] run scoreboard players set @s spheneselfcount 0