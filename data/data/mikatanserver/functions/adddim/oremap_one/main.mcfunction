
execute if entity @a[tag=ore_ruby] run function mikatanserver:adddim/oremap_one/ruby/check
execute if entity @a[tag=ore_sapphire] run function mikatanserver:adddim/oremap_one/sapphire/check
execute if entity @a[tag=ore_sphene] run function mikatanserver:adddim/oremap_one/sphene/check
execute if entity @a[tag=ore_charoite] run function mikatanserver:adddim/oremap_one/charoite/check
execute if entity @a[tag=ore_sunstone] run function mikatanserver:adddim/oremap_one/sunstone/check
execute if entity @a[tag=ore_peridot] run function mikatanserver:adddim/oremap_one/peridot/check
execute if entity @a[tag=ore_rhodo] run function mikatanserver:adddim/oremap_one/rhodochrosite/check
execute if entity @a[tag=event_christmas] run function mikatanserver:adddim/oremap_one/_event_christmas/check
execute if entity @a[tag=ore_aquamarine] run function mikatanserver:adddim/oremap_one/aquamarine/check
execute if entity @a[tag=ore_hematite] run function mikatanserver:adddim/oremap_one/hematite/check
execute if entity @a[tag=ore_jade] run function mikatanserver:adddim/oremap_one/jade/check

execute as @s[scores={stonecount=1..}] run function mikatanserver:adddim/oremap_one/clone
execute as @s[scores={basaltCount=1..}] run function mikatanserver:adddim/oremap_one/clone



##rhodochrosite field reset
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_rhodo] at @s unless blocks -35 75 -169 -6 94 -140 3 74 -169 masked run clone -35 75 -169 -6 94 -140 3 74 -169 filtered #mikatanserver:rakito00_1
##chriatmas field rest
execute as @a[predicate=mikatanserver:oremapdim,tag=event_christmas] at @s unless blocks -199 70 -68 -169 100 -38 -247 71 -67 masked run clone -199 70 -68 -169 100 -38 -247 71 -67 filtered #mikatanserver:christmas
##aquamarine
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_aquamarine] at @s unless blocks -135 71 -162 -104 102 -131 -95 71 -162 masked run clone -134 71 -161 -104 102 -131 -94 71 -161 filtered #mikatanserver:ore_aquamarine
##hematite
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_hematite] at @s unless blocks -134 70 -206 -103 101 -175 -94 70 -206 masked run clone -133 70 -205 -103 101 -175 -93 70 -205 filtered #mikatanserver:ore_hematite
##jade
execute as @a[predicate=mikatanserver:oremapdim,tag=ore_jade] at @s unless blocks -41 73 -207 -10 104 -176 -1 73 -207 masked run clone -41 73 -207 -10 104 -176 -1 73 -207 filtered #mikatanserver:ore_jade



#ブロック撤去
execute in mikatanserver:oremap as @e[type=item,predicate=mikatanserver:oremapdim] at @s unless block ~ ~ ~ air unless block ~ ~ ~ bedrock run kill @s



#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["peridotArmor"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}

##鉱石タグ
# tag @s remove ore_charoite
# tag @s remove ore_peridot
# tag @s remove ore_rhodo
# tag @s remove ore_ruby
# tag @s remove ore_sapphire
# tag @s remove ore_sphene
# tag @s remove ore_sunstone
# tag @s remove event_christmas