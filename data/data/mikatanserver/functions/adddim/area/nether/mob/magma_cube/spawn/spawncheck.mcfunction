summon magma_cube 347.5 -16 -1211.5 {Size:12,Rotation:[-45.0f,0.0f],Tags:["nether_magmacube"],Attributes:[{Name:"minecraft:generic.max_health",Base:200},{Name:"minecraft:generic.attack_damage",Base:30}],Health:200,PersistenceRequired:true}
execute as @a[tag=FieldNether] at @s run playsound entity.generic.explode master @s ~ ~ ~ 2 0
scoreboard players set $boss_flag nether_field_loop 1

bossbar add nether_magmaboss "マグマキューブ"
bossbar set nether_magmaboss players @a[tag=FieldNether]
bossbar set nether_magmaboss max 200
bossbar set nether_magmaboss color red
bossbar set nether_magmaboss value 200