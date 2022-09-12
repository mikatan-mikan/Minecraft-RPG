
scoreboard objectives remove DungeonStartCnt13
scoreboard objectives add ThirteenDunDeath deathCount
##towerの階層
scoreboard objectives add 13_TowerFloor dummy
scoreboard players set $floor 13_TowerFloor 0
##towerの階層にいるモブの数
scoreboard objectives add 13_TowerNowMobCnt dummy
scoreboard players set $mobs 13_TowerNowMobCnt 0