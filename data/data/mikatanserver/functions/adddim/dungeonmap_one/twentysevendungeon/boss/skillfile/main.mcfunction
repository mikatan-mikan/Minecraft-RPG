summon armor_stand ~ ~ ~ {Invulnerable:1,Tags:["BossWindArmor_27","TwentysevenDunMob"],NoGravity:1}
tp @e[tag=BossWindArmor_27,limit=1,sort=nearest] @s
execute as @e[tag=BossWindArmor_27,limit=1,sort=nearest] at @s run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/skillfile/loop