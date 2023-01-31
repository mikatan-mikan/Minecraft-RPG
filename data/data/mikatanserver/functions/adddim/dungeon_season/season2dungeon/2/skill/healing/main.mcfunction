execute as @a[tag=BossBattleseason2] run scoreboard players add $season2 BossHP 25
execute if score $season2 BossHP > $season2_max BossHP run scoreboard players operation $season2 BossHP = $season2_max BossHP
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_season2,distance=..30] ~ ~ ~ 2 1
effect give @a[distance=..50] instant_damage 1 2 
tellraw @a[tag=DungeonPlay_season2] [{"text": "溶岩塊>>","color": "red"},{"text": "ヒーリング！！","color": "green"}]