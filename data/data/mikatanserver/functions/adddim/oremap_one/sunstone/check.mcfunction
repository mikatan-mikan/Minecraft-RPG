##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=sunstoneArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/sunstone/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=sunstoneArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=200..},tag=sunstoneArmor] at @s run function mikatanserver:adddim/oremap_one/sunstone/ore/putsunstoneore

##スフェーン変換&持ち込み削除
clear @s orange_concrete

execute as @s[scores={sunstoselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:orange_concrete",Count:1b}}] run give @s slime_ball{display:{Name:'[{"text":"sunstone"}]'},CustomModelData:5} 1
execute as @s[scores={sunstoselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:orange_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sunstone"}]'},CustomModelData:5} 1
execute as @s[scores={sunstoselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:orange_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sunstone"}]'},CustomModelData:5} 1
execute as @s[scores={sunstoselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:orange_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sunstone"}]'},CustomModelData:5} 1

execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:orange_concrete",Count:1b}}] run kill @s
execute as @a[scores={sunstoselfcount=1..}] run scoreboard players set @s sunstoselfcount 0