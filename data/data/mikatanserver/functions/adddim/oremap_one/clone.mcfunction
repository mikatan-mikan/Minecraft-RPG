execute as @a[predicate=mikatanserver:oremapdim,tag=ore_ruby] at @s run clone 4 69 -10 -21 88 13 -18 1 -10 filtered stone
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_sapphire] at @s run clone -76 92 16 -39 109 53 -62 16 13 filtered minecraft:stone
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_sphene] at @s run clone -87 66 -72 -57 104 -51 -131 69 -70 filtered minecraft:stone
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_charoite] at @s run clone -34 72 -72 -5 105 -43 5 70 -72 filtered stone
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_sunstone] at @s run clone -34 75 -127 -2 99 -95 2 75 -127 filtered minecraft:smooth_basalt
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_peridot] at @s run clone -88 72 -128 -58 102 -98 -137 72 -127 filtered minecraft:stone

scoreboard players set @s stonecount 0
scoreboard players set @s basaltCount 0
kill @e[type=item,predicate=mikatanserver:oremapdim,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}]
kill @e[type=item,predicate=mikatanserver:oremapdim,nbt={Item:{id:"minecraft:stone",Count:1b}}] 
kill @e[type=item,predicate=mikatanserver:oremapdim,nbt={Item:{id:"minecraft:smooth_basalt",Count:1b}}]



##鉱石タグ
# tag @s remove ore_charoite
# tag @s remove ore_peridot
# tag @s remove ore_rhodo
# tag @s remove ore_ruby
# tag @s remove ore_sapphire
# tag @s remove ore_sphene
# tag @s remove ore_sunstone
# tag @s remove event_christmas