scoreboard players set $summon_armor season2BossSkill2 60
function mikatanserver:adddim/dungeon_season/season2dungeon/5/skill/con_fuoco/armor_stand
execute as @a[tag=DungeonPlay_season2] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1.5 0.6
tellraw @a[tag=DungeonPlay_season2] [{"text": "Music of Finale>>","color": "red"},{"text": "コン・フオーコ","color": "yellow"}]