execute store result bossbar minecraft:eleventhboss_bar value run data get entity @e[tag=EleventhDunBoss,limit=1] Health
execute as @e[tag=EleventhDunBoss] run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/mainloop
execute as @e[tag=ModeCSkeEleDun] run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/mob/skeleton