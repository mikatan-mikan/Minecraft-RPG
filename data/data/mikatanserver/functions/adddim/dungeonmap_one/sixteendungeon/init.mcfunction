
scoreboard objectives remove DungeonStartCnt16
scoreboard objectives add 16thDunBossLoopBool dummy
scoreboard players set $bossloop 16thDunBossLoopBool 0
scoreboard objectives add SixteenDunDeath deathCount
##ボス移動カウントスコア
scoreboard objectives add BossMoveCnt_16 dummy
scoreboard players set $bosscnt BossMoveCnt_16 0
##人数検知
scoreboard objectives add 16DunPlayers dummy
scoreboard players set $200 16DunPlayers 200 
scoreboard players set $256 16DunPlayers 256 