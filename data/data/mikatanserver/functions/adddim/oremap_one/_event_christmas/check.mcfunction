##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=iceArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/_event_christmas/ore/putbedrock
execute as @e[type=armor_stand,tag=spruceArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/_event_christmas/ore/putbedrock
execute as @e[type=armor_stand,tag=sprleavesArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/_event_christmas/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=iceArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
scoreboard players add @e[tag=spruceArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
scoreboard players add @e[tag=sprleavesArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=100..},tag=iceArmor] at @s run function mikatanserver:adddim/oremap_one/_event_christmas/ore/putice
execute as @e[scores={removesapAr=100..},tag=spruceArmor] at @s run function mikatanserver:adddim/oremap_one/_event_christmas/ore/putspruce
execute as @e[scores={removesapAr=100..},tag=sprleavesArmor] at @s run function mikatanserver:adddim/oremap_one/_event_christmas/ore/putspruceleaves


##持ち込み削除
clear @s packed_ice
clear @s spruce_log
clear @s spruce_leaves


##モミの素材＆ice crystal生成
execute as @s[scores={iceselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:packed_ice",Count:1b}}] run give @s slime_ball{display:{Name:'[{"text":"ice crystal"}]'},CustomModelData:9} 1
execute as @s[scores={iceselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:packed_ice",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"ice crystal"}]'},CustomModelData:9} 1
execute as @s[scores={iceselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:packed_ice",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"ice crystal"}]'},CustomModelData:9} 1
execute as @s[scores={iceselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:packed_ice",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"ice crystal"}]'},CustomModelData:9} 1

execute as @s[scores={spruceselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_log",Count:1b}}] run give @s slime_ball{display:{Name:'[{"text":"モミの木材"}]'},CustomModelData:10} 1



execute as @s[scores={sprleavesselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_leaves",Count:1b}}] run give @s slime_ball{display:{Name:'[{"text":"モミの葉"}]'},CustomModelData:11} 1


execute as @s[scores={iceselfcount=1..}] at @s as @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:packed_ice",Count:1b}}] run kill @s
execute as @s[scores={spruceselfcount=1..}] at @s as @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_log",Count:1b}}] run kill @s
execute as @s[scores={sprleavesselfcount=1..}] at @s as @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_leaves",Count:1b}}] run kill @s


scoreboard players set @s spruceselfcount 0
scoreboard players set @s sprleavesselfcount 0
scoreboard players set @s iceselfcount 0

# execute as @s[scores={iceselfcount=1..}] run scoreboard players set @s iceselfcount 0
# execute as @s[scores={spruceselfcount=1..}] run scoreboard players set @s spruceselfcount 0
# execute as @s[scores={sprleavesselfcount=1..}] run scoreboard players set @s sprleavesselfcount 0


#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["iceArmor"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}
#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["spruceArmor"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}
#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["sprleavesArmor"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}