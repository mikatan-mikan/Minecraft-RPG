##採掘済みの箇所があれば
execute as @e[type=armor_stand,tag=OREMAP_wind_windArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/masic_wind/ore/putbedrock
execute as @e[type=armor_stand,tag=OREMAP_wind_sapphireArmor,predicate=mikatanserver:oremapdim/orecheck] at @s run function mikatanserver:adddim/oremap_one/masic_wind/ore/putbedrock
##採掘済みで岩盤が設置されてるなら
scoreboard players add @e[tag=OREMAP_wind_windArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1
scoreboard players add @e[tag=OREMAP_wind_sapphireArmor,predicate=mikatanserver:oremapdim/putbedrockafter] removesapAr 1

execute as @e[scores={removesapAr=100..},tag=OREMAP_wind_windArmor] at @s run function mikatanserver:adddim/oremap_one/masic_wind/ore/wind_book
execute as @e[scores={removesapAr=100..},tag=OREMAP_wind_sapphireArmor] at @s run function mikatanserver:adddim/oremap_one/masic_wind/ore/sapphire

##持ち込み削除
clear @s book
clear @s light_blue_concrete
clear @s bookshelf

##モミの素材＆ice crystal生成
execute as @s[scores={bookselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bookshelf",Count:1b}}] run give @s slime_ball{display:{Name:'[{"text":"masic book <wind>","color": "green"}]'},CustomModelData:26} 1
execute as @s[scores={bookselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bookshelf",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"masic book <wind>","color": "green"}]'},CustomModelData:26} 1
execute as @s[scores={bookselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bookshelf",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"masic book <wind>","color": "green"}]'},CustomModelData:26} 1
execute as @s[scores={bookselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bookshelf",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"masic book <wind>","color": "green"}]'},CustomModelData:26} 1

execute as @s[scores={sapphiselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}}] run give @s slime_ball{display:{Name:'[{"text":"sapphire"}]'},CustomModelData:2} 1
execute as @s[scores={sapphiselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sapphire"}]'},CustomModelData:2} 1
execute as @s[scores={sapphiselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sapphire"}]'},CustomModelData:2} 1
execute as @s[scores={sapphiselfcount=1..}] at @s if entity @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}},predicate=mikatanserver:chance/0.30] run give @s slime_ball{display:{Name:'[{"text":"sapphire"}]'},CustomModelData:2} 1


execute as @s[scores={bookselfcount=1..}] at @s as @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:bookshelf",Count:1b}}] run kill @s
execute as @s[scores={bookselfcount=1..}] at @s as @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:book"}}] run kill @s
execute as @s[scores={sapphiselfcount=1..}] at @s as @e[distance=..5,type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:light_blue_concrete",Count:1b}}] run kill @s



scoreboard players set @s bookselfcount 0
scoreboard players set @s sapphiselfcount 0

# execute as @s[scores={redwoolselfcount=1..}] run scoreboard players set @s redwoolselfcount 0
# execute as @s[scores={spruceselfcount=1..}] run scoreboard players set @s spruceselfcount 0
# execute as @s[scores={sprleavesselfcount=1..}] run scoreboard players set @s sprleavesselfcount 0


#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["2022C_ruby"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}
#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["2022C_spruceArmor"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}
#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["2022C_bookArmor"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}