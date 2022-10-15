execute unless entity @e[tag=Jungle_Boss] run summon zombie -803.5 129 235.5 {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2932224}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2932224}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2932224}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1526642429,-679850889,-1167537464,696054179],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2IxMDdiMTE4YTI5ZTU2MjFmM2MzODBjYzc3NDUyMThjODg1Mzk0MWZjOWE0YmVlOGY4NmM0YWFmMDAyZThlZiJ9fX0="}]}}}}],Tags:["Jungle_Boss"],Health:600,Attributes:[{Name:"minecraft:generic.max_health",Base:600},{Name:"minecraft:generic.knockback_resistance",Base:1},{Name:"minecraft:generic.movement_speed",Base:0.35}],PersistenceRequired:true}
execute as @a[tag=FieldJungle] at @s run playsound entity.generic.explode master @s ~ ~ ~ 2 0
scoreboard players set $jungle_boss_flag field_loop 1

bossbar add jungle_zombie "古代の亡骸"
bossbar set jungle_zombie players @a[tag=FieldJungle]
bossbar set jungle_zombie max 600
bossbar set jungle_zombie color red
bossbar set jungle_zombie value 600

clear @a player_head{jungle_boss:true}