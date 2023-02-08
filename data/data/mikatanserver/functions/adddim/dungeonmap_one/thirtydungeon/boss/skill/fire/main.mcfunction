execute store result score @s RotCalc run data get entity @s Rotation[0]
execute store result entity @s Rotation[0] float 1 run scoreboard players add @s RotCalc 5
kill @e[tag=ThirtyDunMob,tag=ThirtyFireAr]
summon armor_stand ^ ^ ^1 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^2 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^3 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^4 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^5 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^6 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^7 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^8 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^9 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^10 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^11 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^12 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^13 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^14 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^15 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^16 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^17 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^18 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^19 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
summon armor_stand ^ ^ ^20 {Tags:[ThirtyDunMob,ThirtyFireAr],Small:1b,Invisible:1b,Invulnerable:1b}
execute as @e[tag=ThirtyDunMob,tag=ThirtyFireAr] at @s run particle flame ~ ~ ~ 0 0 0 0.1 10
execute as @e[tag=ThirtyDunMob,tag=ThirtyFireAr] at @s run effect give @a[distance=..1] instant_damage 1 3
execute as @e[tag=ThirtyDunMob,tag=ThirtyFireAr] at @s run effect give @a[distance=..1] wither 10 2