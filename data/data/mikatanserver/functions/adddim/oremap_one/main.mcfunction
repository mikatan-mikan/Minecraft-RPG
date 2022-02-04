
function mikatanserver:adddim/oremap_one/ruby/check
function mikatanserver:adddim/oremap_one/sapphire/check
function mikatanserver:adddim/oremap_one/sphene/check
function mikatanserver:adddim/oremap_one/charoite/check
function mikatanserver:adddim/oremap_one/sunstone/check
function mikatanserver:adddim/oremap_one/peridot/check
function mikatanserver:adddim/oremap_one/rhodochrosite/check
function mikatanserver:adddim/oremap_one/_event_christmas/check

execute as @s[scores={stonecount=1..}] run function mikatanserver:adddim/oremap_one/clone
execute as @s[scores={basaltCount=1..}] run function mikatanserver:adddim/oremap_one/clone



##rhodochrosite field reset
execute as @a[predicate=mikatanserver:oremapdim] at @s unless blocks -35 75 -169 -6 94 -140 3 74 -169 masked run clone -35 75 -169 -6 94 -140 3 74 -169 filtered #mikatanserver:rakito00_1
##chriatmas field rest
execute as @a[predicate=mikatanserver:oremapdim] at @s unless blocks -199 70 -68 -169 100 -38 -247 71 -67 masked run clone -199 70 -68 -169 100 -38 -247 71 -67 filtered #mikatanserver:christmas


#ブロック撤去
execute in mikatanserver:oremap as @e[type=item,predicate=mikatanserver:oremapdim] at @s unless block ~ ~ ~ air unless block ~ ~ ~ bedrock run kill @s



#チェック用アマスタsummon minecraft:armor_stand ~ ~-1 ~ {Tags:["peridotArmor"],Invisible:1,Small:1b,Invulnerable:1b,NoGravity:1b}