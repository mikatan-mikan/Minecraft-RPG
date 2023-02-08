##無条件でプレイヤーに近づく
kill @e[tag=PlayerPosAr,tag=ThirtyDunMob,scores={ThirtyBossSkill=2..}]
execute store result score $y NowPlaceY run data get entity @p Pos[1] 10
execute if score $y NowPlaceY matches 990 run tp @s ~ ~ ~ facing entity @p
execute unless score $y NowPlaceY matches 990 at @p run summon armor_stand ~ ~ ~ {Tags:["ThirtyDunMob","PlayerPosAr"],Small:1b,Invisible:1b,Invulnerable:1b}
execute as @e[tag=PlayerPosAr,tag=ThirtyDunMob] unless score @s ThirtyBossSkill matches 1.. run data modify entity @s Pos[1] set value 99.0d
execute unless score $y NowPlaceY matches 990 run tp @s ~ ~ ~ facing entity @e[tag=PlayerPosAr,tag=ThirtyDunMob,scores={ThirtyBossSkill=1},limit=1]
scoreboard players add @e[tag=PlayerPosAr,tag=ThirtyDunMob] ThirtyBossSkill 1
data modify entity @s Rotation[1] merge value 0.0f
# execute store result score @s RotCalc run data get entity @p Rotation[0]
# execute store result entity @s Rotation[0] float 1 run scoreboard players remove @s RotCalc 180
execute unless entity @a[distance=..0.5] if entity @a[distance=..50] run tp @s ^ ^ ^0.4
##強化時
execute if entity @s[tag=Power] unless entity @a[distance=..0.5] if entity @a[distance=..50] run tp @s ^ ^ ^0.6
##距離が近ければダメージを与える
execute if entity @a[distance=..2] if score $ai_damage_cooltime ThirtyBossSkill matches 15.. run function mikatanserver:adddim/dungeonmap_one/thirtydungeon/boss/skill/_ai/damage
##15tickに一回ダメージを与えることができる
execute unless score $ai_damage_cooltime ThirtyBossSkill matches 15.. run scoreboard players add $ai_damage_cooltime ThirtyBossSkill 1