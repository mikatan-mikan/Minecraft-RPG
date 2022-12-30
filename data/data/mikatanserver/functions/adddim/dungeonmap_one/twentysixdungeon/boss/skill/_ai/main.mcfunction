##無条件でプレイヤーに近づく
# execute store result score @s RotCalc run data get entity @p Rotation[0]
# execute store result entity @s Rotation[0] float 1 run scoreboard players remove @s RotCalc 180
tp @s ^ ^ ^0.5 facing entity @p
tp @e[tag=TwentysixDunZombie] ^ ^ ^0.5 facing entity @p
##強化時
execute if entity @s[tag=Power] run tp @s ^ ^ ^0.5 facing entity @p
execute if entity @s[tag=Power] run tp @a[distance=..1] ~ ~-2 ~
data modify entity @s Rotation[1] merge value 0.0f
##距離が近ければダメージを与える
execute if entity @a[distance=..2] if score $ai_damage_cooltime TwentysixBossSkill matches 15.. run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/skill/_ai/damage
##15tickに一回ダメージを与えることができる
execute unless score $ai_damage_cooltime TwentysixBossSkill matches 15.. run scoreboard players add $ai_damage_cooltime TwentysixBossSkill 1