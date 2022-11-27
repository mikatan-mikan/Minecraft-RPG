execute if score $23 BossHP matches ..300 run clear @a[tag=BossBattle23] #boats
execute if score $23 BossHP matches ..300 run effect clear @a[tag=BossBattle23] resistance
##bossの現在HPをgetする
execute store result score $23_boss_hp boss_hp_checker run data get entity @e[tag=TwentythreeDunBoss,limit=1] Health
##減ったhpを検知する
scoreboard players operation $23_boss_hp TMP = $1024 int
scoreboard players operation $23_boss_hp TMP -= $23_boss_hp boss_hp_checker
##スコアからhpを減算する
scoreboard players operation $23 BossHP -= $23_boss_hp TMP
#execute unless data entity @s {Health:1024.0f} run 
##ダメージ表示
execute at @s run function mh_rpgish:mob/non_bar/hp_changed
##ボス本体のhpを回復させる
effect give @s instant_health 1 200
##もしボスのHPが0を下回ればボスをキルする(プレイヤーの勝利条件)
execute if score $23 BossHP matches ..0 run kill @s

##healing
execute if entity @a[scores={TwentythreeBossSkill=50}] as @e[tag=TwentythreeDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/healing/main
##トラップ
execute if entity @a[scores={TwentythreeBossSkill=100}] as @e[tag=TwentythreeDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/skill_trap/set_trap
##comet&wither
execute if entity @a[scores={TwentythreeBossSkill=175}] as @e[tag=TwentythreeDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/skill_comet/comet_main
execute if entity @a[scores={TwentythreeBossSkill=175..206}] as @a[tag=DungeonPlay_23] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/skill_comet/comet_playsound_particle

##bomb
execute if entity @a[scores={TwentythreeBossSkill=110}] as @a[tag=DungeonPlay_23] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/bomb/set
execute if entity @a[scores={TwentythreeBossSkill=110}] as @a[tag=DungeonPlay_23] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/bomb/set_par
execute if entity @a[scores={TwentythreeBossSkill=130}] as @e[tag=TwentythreeBombAr] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/bomb/main
##star
execute if entity @a[scores={TwentythreeBossSkill=225}] as @e[tag=TwentythreeDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/skill_star_fall/star_fall_main
execute if entity @a[scores={TwentythreeBossSkill=225..275}] as @e[tag=TwentythreeDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/skill_star_fall/star_fall_move_damage
execute if entity @a[scores={TwentythreeBossSkill=276..277}] as @e[tag=TwentythreeDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/skill_star_fall/star_fall_kill

execute if entity @a[scores={TwentythreeBossSkill=300..}] run scoreboard players set @a TwentythreeBossSkill 0


##持ち物変換スケルトン
execute if entity @a[scores={TwentythreeBossSkill=0..300}] as @e[tag=ModeCSkeFouDun] at @s run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skill/skill_trap/skeleton