summon armor_stand ~ ~ ~ {Invulnerable:1,Tags:["BossWindArmor11","ElevenDunMob"],NoGravity:1,Invisible:1b}
tp @e[tag=BossWindArmor11,limit=1,sort=nearest] @s
execute as @e[tag=BossWindArmor11,limit=1,sort=nearest] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/wind/loop