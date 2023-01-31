execute as @a[tag=BossBattleseason2] run scoreboard players add $season2 BossHP 11
execute if score $season2 BossHP > $season2_max BossHP run scoreboard players operation $season2 BossHP = $season2_max BossHP
execute if score $season2 BossHP matches ..600 run kill @e[distance=..50,type=boat]
execute if score $season2 BossHP matches ..200 run effect give @a[tag=BossBattleseason2] instant_damage 1 2
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_season2,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "ヒーリング！！","color": "green"}]