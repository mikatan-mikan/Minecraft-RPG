
execute if entity @s[tag=ore_ruby] run function mikatanserver:adddim/oremap_one/ruby/check
execute if entity @s[tag=ore_sapphire] run function mikatanserver:adddim/oremap_one/sapphire/check
execute if entity @s[tag=ore_sphene] run function mikatanserver:adddim/oremap_one/sphene/check
execute if entity @s[tag=ore_charoite] run function mikatanserver:adddim/oremap_one/charoite/check
execute if entity @s[tag=ore_sunstone] run function mikatanserver:adddim/oremap_one/sunstone/check
execute if entity @s[tag=ore_peridot] run function mikatanserver:adddim/oremap_one/peridot/check
execute if entity @s[tag=ore_rhodo] run function mikatanserver:adddim/oremap_one/rhodochrosite/check
execute if entity @s[tag=event_christmas] run function mikatanserver:adddim/oremap_one/_event_christmas/check
execute if entity @s[tag=ore_aquamarine] run function mikatanserver:adddim/oremap_one/aquamarine/check
execute if entity @s[tag=ore_hematite] run function mikatanserver:adddim/oremap_one/hematite/check
execute if entity @s[tag=ore_jade] run function mikatanserver:adddim/oremap_one/jade/check
execute if entity @s[tag=event_christmas_2022] run function mikatanserver:adddim/oremap_one/_event_christmas_2022/check
execute if entity @s[tag=ore_windmasic] run function mikatanserver:adddim/oremap_one/masic_wind/check
execute if entity @s[tag=ore_tanzanite] run function mikatanserver:adddim/oremap_one/tanzanite/check
execute if entity @s[tag=ore_citrin] run function mikatanserver:adddim/oremap_one/citrin/check
execute if entity @s[tag=ore_moon_stone] run function mikatanserver:adddim/oremap_one/moon_stone/check
execute if entity @s[tag=ore_icemasic] run function mikatanserver:adddim/oremap_one/masic_ice/check
execute if entity @s[tag=ore_lightmasic] run function mikatanserver:adddim/oremap_one/masic_light/check

execute as @s[scores={stonecount=1..}] run function mikatanserver:adddim/oremap_one/clone
execute as @s[scores={basaltCount=1..}] run function mikatanserver:adddim/oremap_one/clone



##rhodochrosite field reset
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_rhodo] at @s unless blocks -35 75 -169 -6 94 -140 3 74 -169 masked run clone -35 75 -169 -6 94 -140 3 74 -169 filtered #mikatanserver:rakito00_1
##chriatmas field rest
execute as @s[predicate=mikatanserver:oremapdim,tag=event_christmas] at @s unless blocks -199 70 -68 -169 100 -38 -247 71 -67 masked run clone -199 70 -68 -169 100 -38 -247 71 -67 filtered #mikatanserver:christmas
##aquamarine
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_aquamarine] at @s unless blocks -135 71 -162 -104 102 -131 -95 71 -162 masked run clone -134 71 -161 -104 102 -131 -94 71 -161 filtered #mikatanserver:ore_aquamarine
##hematite
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_hematite] at @s unless blocks -134 70 -206 -103 101 -175 -94 70 -206 masked run clone -133 70 -205 -103 101 -175 -93 70 -205 filtered #mikatanserver:ore_hematite
##jade
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_jade] at @s unless blocks -41 73 -207 -10 104 -176 -1 73 -207 masked run clone -41 73 -207 -10 104 -176 -1 73 -207 filtered #mikatanserver:ore_jade
##chriatmas 2022
execute as @s[predicate=mikatanserver:oremapdim,tag=event_christmas_2022] at @s unless blocks 437 81 15 463 122 41 477 81 15 masked run clone 437 81 15 463 122 41 477 81 15 filtered #mikatanserver:christmas_2022
##chriatmas 2022
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_windmasic] at @s unless blocks 417 96 252 457 116 288 462 96 252 masked run clone 417 96 252 457 116 288 462 96 252 filtered #mikatanserver:ore_windmasic
##tanzanite
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_tanzanite] at @s unless blocks 443 121 -339 469 157 -313 393 121 -339 masked run clone 443 121 -339 469 157 -313 393 121 -339 filtered #mikatanserver:ore_tanzanite
##citrin
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_citrin] at @s unless blocks 429 121 -405 460 142 -374 379 121 -405 masked run clone 429 121 -405 460 142 -374 379 121 -405 filtered #mikatanserver:ore_citrin
##moon_stone
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_moon_stone] at @s unless blocks 433 120 -454 464 151 -423 383 120 -454 masked run clone 433 120 -454 464 151 -423 383 120 -454 filtered #mikatanserver:ore_moon_stone
##ice_masic
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_icemasic] at @s unless blocks 425 82 482 451 123 508 465 82 482 masked run clone 425 82 482 451 123 508 465 82 482 filtered #mikatanserver:ore_icemasic
##ice_masic
execute as @s[predicate=mikatanserver:oremapdim,tag=ore_lightmasic] at @s unless blocks 218 66 500 256 86 538 263 66 500 masked run clone 218 66 500 256 86 538 263 66 500 filtered #mikatanserver:ore_lightmasic



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
# tag @s remove ore_jade
# tag @s remove ore_aquamarine
# tag @s remove ore_hematite
# tag @s remove event_shristmas_2022
# tag @s remove ore_windmasic