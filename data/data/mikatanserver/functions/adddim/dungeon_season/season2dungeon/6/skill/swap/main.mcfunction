tellraw @a[tag=DungeonPlay_season2] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "スワッピング！！","color": "gold"}]
summon armor_stand ~ ~ ~ {Tags:["season2DunMob","season2SwapAr"],Small:true,Invisible:true,Invulnerable:true}
effect give @a[tag=BossBattleseason2] blindness 3 0
particle end_rod ~ ~ ~ 0.5 0.5 0.5 1 10
execute as @a[tag=BossBattleseason2,sort=random,limit=1] at @s in mikatanserver:dungeon run function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/swap/player
execute as @a[tag=BossBattleseason2] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 2 1