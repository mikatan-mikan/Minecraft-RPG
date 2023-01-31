summon armor_stand ^2 ^ ^2 {Tags:["season2_BlessAr","season2DunMob"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^-2 ^ ^2 {Tags:["season2_BlessAr","season2DunMob"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^4 ^ ^4 {Tags:["season2_BlessAr","season2DunMob"],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^-4 ^ ^4 {Tags:["season2_BlessAr","season2DunMob"],Small:1b,Invisible:1b,Invulnerable:1b}

execute as @e[tag=season2_BlessAr] at @s run particle dragon_breath ~ ~ ~ 0.5 0.5 0.5 0 100
execute as @e[tag=season2_BlessAr] at @s run effect give @a[distance = ..2] instant_damage 1 2
execute as @e[tag=season2_BlessAr] at @s run effect give @a[distance = ..2] slowness 7 0
execute as @e[tag=season2_BlessAr] at @s run playsound entity.ender_dragon.ambient master @a[distance = ..2] ~ ~ ~ 1 2

kill @e[tag=season2_BlessAr]
tellraw @a[tag=DungeonPlay_season2] [{"text": "略奪者>>","color": "dark_purple"},{"text": "ドラゴンの吐息！！","color": "durk_purple"}]