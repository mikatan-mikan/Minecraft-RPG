
scoreboard objectives remove DungeonStartCnt12
scoreboard objectives add 12thDunBossLoopBool dummy
scoreboard players set $bossloop 12thDunBossLoopBool 0
scoreboard objectives add TwelvethDunDeath deathCount
##ボス移動カウントスコア
scoreboard objectives add BossMoveCnt dummy
scoreboard players set $bosscnt BossMoveCnt 0
##人数検知
scoreboard objectives add 12DunPlayers dummy
scoreboard players set $200 12DunPlayers 200 
scoreboard players set $256 12DunPlayers 256 