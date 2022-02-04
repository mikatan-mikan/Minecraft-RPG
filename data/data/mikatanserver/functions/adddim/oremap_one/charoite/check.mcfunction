##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=charoiteArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/charoite/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=charoiteArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=200..},tag=charoiteArmor] at @s run function mikatanserver:adddim/oremap_one/charoite/ore/putcharoiteore


##charoite変換&持ち込み削除
clear @s purple_concrete

execute as @s[scores={charoselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:purple_concrete",Count:1b}},distance=..5] run give @s slime_ball{display:{Name:'[{"text":"charoite"}]'},CustomModelData:4} 1
execute as @s[scores={charoselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:purple_concrete",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"charoite"}]'},CustomModelData:4} 1
execute as @s[scores={charoselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:purple_concrete",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"charoite"}]'},CustomModelData:4} 1
execute as @s[scores={charoselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:purple_concrete",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s slime_ball{display:{Name:'[{"text":"charoite"}]'},CustomModelData:4} 1

execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:purple_concrete",Count:1b}},distance=..5] run kill @s
execute as @s[scores={charoselfcount=1..}] run scoreboard players set @s charoselfcount 0