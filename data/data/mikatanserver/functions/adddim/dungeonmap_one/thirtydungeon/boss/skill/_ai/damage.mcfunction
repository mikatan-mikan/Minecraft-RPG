# effect give @a[distance=..2] instant_damage 1 1
execute if entity @s[tag=Power] run effect give @a[distance=..2] slowness 1 1
scoreboard players set $ai_damage_cooltime ThirtyBossSkill 0

