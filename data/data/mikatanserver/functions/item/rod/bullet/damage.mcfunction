playsound item.axe.scrape master @a ~ ~ ~ 2 0.7
scoreboard players set @s MK.attack.damage 15
function mikatanlib:damage/main
effect give @s poison 5 0
kill @e[distance=..1,tag=IronPlayerAr]