summon armor_stand ~ ~ ~ {Invulnerable:1,Tags:["BossWindArmor"],NoGravity:1}
tp @e[tag=BossWindArmor,limit=1,sort=nearest] @s
execute as @e[tag=BossWindArmor,limit=1,sort=nearest] at @s run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/loop