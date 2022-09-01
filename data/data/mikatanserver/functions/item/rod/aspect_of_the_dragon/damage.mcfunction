
function mikatanlib:knockback/knockbackexe
effect give @s instant_damage 1 30
execute store result score @s MobNowHP run data get entity @s Health
scoreboard players remove @s MobNowHP 20
execute if score $plus_20 aotd_plus20_flag matches 1 run scoreboard players remove @s MobNowHP 20
scoreboard players reset $plus_20 aotd_plus20_flag
execute if score @s MobNowHP matches ..0 run scoreboard players add @a[sort=nearest,limit=1,tag=MK.k.Attacker] attackSxp 1
execute store result entity @s Health double 1 run scoreboard players get @s MobNowHP

#summon minecraft:creeper ~ ~ ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:40}],Health:40}