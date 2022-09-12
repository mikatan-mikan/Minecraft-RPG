##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=sapphireArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/sapphire/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=sapphireArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=200..},tag=sapphireArmor] at @s run function mikatanserver:adddim/oremap_one/sapphire/ore/putsapphireore


##サファイア変換&持ち込み削除
clear @s light_blue_concrete

execute as @s[scores={sapphiselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}}] run give @s slime_ball{display:{Name:'[{"text":"sapphire"}]'},CustomModelData:2} 1
execute as @s[scores={sapphiselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sapphire"}]'},CustomModelData:2} 1
execute as @s[scores={sapphiselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sapphire"}]'},CustomModelData:2} 1
execute as @s[scores={sapphiselfcount=1..}] if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sapphire"}]'},CustomModelData:2} 1


execute if entity @s[scores={sapphiselfcount=1..}] at @s as @e[distance=..50,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}}] run kill @s
execute as @s[scores={sapphiselfcount=1..}] run scoreboard players set @s sapphiselfcount 0