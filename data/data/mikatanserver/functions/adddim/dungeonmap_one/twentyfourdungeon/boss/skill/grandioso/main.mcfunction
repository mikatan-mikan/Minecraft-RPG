
execute if score $diff TwentyfourBossSkill matches 1 run effect give @a[tag=DungeonPlay_24] speed 2 0
execute if score $diff TwentyfourBossSkill matches 1 run effect give @e[tag=TwentyfourDunBoss] speed 2 0
execute if score $diff TwentyfourBossSkill matches 2 run effect give @a[tag=DungeonPlay_24] speed 2 2
execute if score $diff TwentyfourBossSkill matches 2 run effect give @e[tag=TwentyfourDunBoss] speed 2 2
execute if score $diff TwentyfourBossSkill matches 3 run effect give @a[tag=DungeonPlay_24] speed 2 4
execute if score $diff TwentyfourBossSkill matches 3 run effect give @e[tag=TwentyfourDunBoss] speed 2 4

execute as @a[tag=DungeonPlay_24] at @s run playsound item.armor.equip_leather master @s ~ ~ ~ 2 1.4

tellraw @a[tag=DungeonPlay_24] [{"text": "Music of Finale>>","color": "red"},{"text": "グランディオーソ","color": "dark_green"}]