summon armor_stand ^2 ^ ^2 {Tags:["14_BlessAr","FourteenDunMob"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^-2 ^ ^2 {Tags:["14_BlessAr","FourteenDunMob"],Small:1b,Invisible:1b,Invulnerable:1b}

execute as @e[tag=14_BlessAr] at @s run particle dragon_breath ~ ~ ~ 0.5 0.5 0.5 0 100
execute as @e[tag=14_BlessAr] at @s run effect give @a[distance = ..2] instant_damage 1 2
execute as @e[tag=14_BlessAr] at @s run effect give @a[distance = ..2] slowness 7 0
execute as @e[tag=14_BlessAr] at @s run playsound entity.ender_dragon.ambient master @a[distance = ..2] ~ ~ ~ 1 2

kill @e[tag=14_BlessAr]
tellraw @a[tag=DungeonPlay_14] [{"text": "略奪者>>","color": "dark_purple"},{"text": "ドラゴンの吐息！！","color": "durk_purple"}]