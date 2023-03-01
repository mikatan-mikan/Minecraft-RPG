playsound item.axe.scrape master @a ~ ~ ~ 2 0.7
scoreboard players set @s MK.attack.damage 3
execute if entity @e[distance=..1,type=armor_stand,tag=Tier2] run scoreboard players add @s MK.attack.damage 1
function mikatanlib:damage/main
effect give @s instant_damage 1 1
effect give @s poison 5 0
kill @e[distance=..1,tag=IronPlayerAr]