summon magma_cube 2132.5 85 688.5 {Size:12,Rotation:[-45.0f,0.0f],Tags:["nether_tier2_magmacube"],Attributes:[{Name:"minecraft:generic.max_health",Base:200},{Name:"minecraft:generic.attack_damage",Base:30}],Health:200,PersistenceRequired:true}
execute as @a[tag=FieldNether_2] at @s run playsound entity.generic.explode master @s ~ ~ ~ 2 0
scoreboard players set $nether_tier2_boss_flag field_loop 1

bossbar add nether_tier2_magmaboss "マグマキューブ"
bossbar set nether_tier2_magmaboss players @a[tag=FieldNether_2]
bossbar set nether_tier2_magmaboss max 200
bossbar set nether_tier2_magmaboss color red
bossbar set nether_tier2_magmaboss value 200