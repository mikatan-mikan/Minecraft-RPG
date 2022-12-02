scoreboard players set $summon_armor TwentyfourBossSkill2 40
function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/skill/con_fuoco/armor_stand
execute as @a[tag=DungeonPlay_24] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1.5 0.6
tellraw @a[tag=DungeonPlay_24] [{"text": "Music of Finale>>","color": "red"},{"text": "コン・フオーコ","color": "yellow"}]