##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=Area_mine_oak] at @s if predicate mikatanserver:oremapdim/orecheck run function mikatanserver:adddim/area/island/blocks/ore/putbedrock
execute as @e[type=armor_stand,tag=Area_mine_doak] at @s if predicate mikatanserver:oremapdim/orecheck run function mikatanserver:adddim/area/island/blocks/ore/putbedrock
execute as @e[type=armor_stand,tag=Area_mine_amethyst] at @s if predicate mikatanserver:oremapdim/orecheck run function mikatanserver:adddim/area/island/blocks/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=Area_mine_oak,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
scoreboard players add @e[tag=Area_mine_doak,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
scoreboard players add @e[tag=Area_mine_amethyst,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
execute as @e[scores={removesapAr=200..},tag=Area_mine_oak] at @s run function mikatanserver:adddim/area/island/blocks/ore/put_oak
execute as @e[scores={removesapAr=200..},tag=Area_mine_doak] at @s run function mikatanserver:adddim/area/island/blocks/ore/put_doak
execute as @e[scores={removesapAr=200..},tag=Area_mine_amethyst] at @s run function mikatanserver:adddim/area/island/blocks/ore/put_amethyst

##amethyst変換&持ち込み削除
clear @s amethyst_block
clear @s oak_log
clear @s dark_oak_log

execute as @s[scores={amethystselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}},distance=..5] run give @s amethyst_shard{display:{Name:'[{"text":"high amethyst","color": "dark_purple"}]'},island_item:true} 1
execute as @s[scores={amethystselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s amethyst_shard{display:{Name:'[{"text":"high amethyst","color": "dark_purple"}]'},island_item:true} 1
execute as @s[scores={amethystselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s amethyst_shard{display:{Name:'[{"text":"high amethyst","color": "dark_purple"}]'},island_item:true} 1
execute as @s[scores={amethystselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}},predicate=mikatanserver:chance/0.30,distance=..5] run give @s amethyst_shard{display:{Name:'[{"text":"high amethyst","color": "dark_purple"}]'},island_item:true} 1


execute as @s[scores={oakselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_log",Count:1b}},distance=..5] run give @s oak_wood{display:{Name:'[{"text":"islands planks","color": "green"}]'},island_item:true} 1


execute as @s[scores={doakselfcount=1..}] at @s if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}},distance=..5] run give @s oak_wood{display:{Name:'[{"text":"islands planks","color": "green"}]'},island_item:true} 1

execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}},distance=..5] run kill @s
execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_log",Count:1b}},distance=..5] run kill @s
execute at @s as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}},distance=..5] run kill @s
execute as @s[scores={amethystselfcount=1..}] run scoreboard players set @s amethystselfcount 0
execute as @s[scores={oakselfcount=1..}] run scoreboard players set @s oakselfcount 0
execute as @s[scores={doakselfcount=1..}] run scoreboard players set @s doakselfcount 0