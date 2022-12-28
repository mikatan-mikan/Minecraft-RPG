scoreboard players remove @s ForestRod 1

scoreboard players operation $tmp ForestRod = @s ForestRod
scoreboard players operation $tmp ForestRod %= $5 int

execute if score $tmp ForestRod matches 0 run summon armor_stand ~ ~3 ~ {Tags:["TpBef","ForestRodAr"],Small:1b,Invisible:1b,Invulnerable:1b}
execute if score $tmp ForestRod matches 0 run playsound item.armor.equip_leather master @a ~ ~ ~ 2 1.4
