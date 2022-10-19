tellraw @a[tag=DungeonPlay_20] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "スワッピング！！","color": "gold"}]
summon armor_stand ~ ~ ~ {Tags:["TwentyDunMob","TwentySwapAr"],Small:true,Invisible:true,Invulnerable:true}
effect give @a[tag=BossBattle20] blindness 3 0
particle end_rod ~ ~ ~ 0.5 0.5 0.5 1 10
execute as @a[tag=BossBattle20,sort=random,limit=1] at @s in mikatanserver:dungeon run function mikatanserver:adddim/dungeonmap_one/twentydungeon/boss/skill/swap/player
execute as @a[tag=BossBattle20] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 2 1