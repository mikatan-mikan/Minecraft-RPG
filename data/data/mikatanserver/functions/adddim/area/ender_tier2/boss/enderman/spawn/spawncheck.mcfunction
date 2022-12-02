summon enderman 347.5 -16 -1211.5 {Rotation:[-45.0f,0.0f],Tags:["ender_boss"],Attributes:[{Name:"minecraft:generic.max_health",Base:500},{Name:"minecraft:generic.attack_damage",Base:20}],Health:500,PersistenceRequired:true}
execute as @a[tag=FieldEnder_2] at @s run playsound entity.generic.explode master @s ~ ~ ~ 2 0
scoreboard players set $ender_tier2_boss_flag field_loop 1

bossbar add ender_boss "終の卓越者"
bossbar set ender_boss players @a[tag=FieldEnder_2]
bossbar set ender_boss max 500
bossbar set ender_boss color purple
bossbar set ender_boss value 500