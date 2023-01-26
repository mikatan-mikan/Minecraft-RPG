
summon armor_stand ~ ~ ~ {Tags:["TwentyeightDunMob","TwentyeightSwapAr"],Small:true,Invisible:true,Invulnerable:true}
effect give @a[tag=BossBattle28] blindness 3 0
particle end_rod ~ ~ ~ 0.5 0.5 0.5 1 10
execute as @a[tag=BossBattle28,sort=random,limit=1] at @s in mikatanserver:dungeon run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/write/swap_player
execute as @a[tag=BossBattle28] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 2 1