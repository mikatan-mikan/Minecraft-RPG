
execute if entity @a[scores={FourBossSkill=100}] as @e[tag=FourthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/skill/skill_trap/set_trap

execute if entity @a[scores={FourBossSkill=175}] as @e[tag=FourthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/skill/skill_comet/comet_main
execute if entity @a[scores={FourBossSkill=175..206}] as @a[tag=DungeonPlay_4] at @s run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/skill/skill_comet/comet_playsound_particle

execute if entity @a[scores={FourBossSkill=225}] as @e[tag=FourthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/skill/skill_star_fall/star_fall_main
execute if entity @a[scores={FourBossSkill=225..275}] as @e[tag=FourthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/skill/skill_star_fall/star_fall_move_damage
execute if entity @a[scores={FourBossSkill=276..277}] as @e[tag=FourthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/skill/skill_star_fall/star_fall_kill

execute if entity @a[scores={FourBossSkill=300..}] run scoreboard players set @a FourBossSkill 0


##持ち物変換スケルトン
execute if entity @a[scores={FourBossSkill=0..300}] as @e[tag=ModeCSkeFouDun] at @s run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/skill/skill_trap/skeleton