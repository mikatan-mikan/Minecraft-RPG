##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=rhodochrositeArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/rhodochrosite/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=rhodochrositeArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=200..},tag=rhodochrositeArmor] at @s run function mikatanserver:adddim/oremap_one/rhodochrosite/ore/putrhodochrositeore

##変換&持ち込み削除
clear @s pink_concrete

execute as @s[scores={rhodochrositeselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:pink_concrete",Count:1b}},distance=..5] run function mikatanserver:adddim/oremap_one/rhodochrosite/give


execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:pink_concrete",Count:1b}},distance=..5] run kill @s
execute as @s[scores={rhodochrositeselfcount=1..}] run scoreboard players set @s rhodochrositeselfcount 0

#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["rhodochrositeArmor"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}