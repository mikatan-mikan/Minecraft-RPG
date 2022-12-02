execute as @a[tag=BossBattle24] at @s run particle soul ~ ~ ~ 0.5 1 0.5 1 50
playsound block.fire.extinguish master @s ~ ~ ~ 1 1

effect give @a[tag=BossBattle24] weakness 3 0
effect give @a[tag=BossBattle24] slowness 2 0
effect give @a[tag=BossBattle24] wither 5 5
execute if score $diff TwentyfourBossSkill matches 2.. run effect give @a[tag=DungeonPlay_24] blindness 4 0
execute if score $diff TwentyfourBossSkill matches 2 run effect give @a[tag=DungeonPlay_24] instant_damage 1 0
execute if score $diff TwentyfourBossSkill matches 3 run effect give @a[tag=DungeonPlay_24] instant_damage 1 1
tellraw @a[tag=DungeonPlay_24] [{"text": "Music of Finale>>","color": "red"},{"text": "デクレッシェンド","color": "blue"}]