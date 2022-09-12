## 起点：323.0 27 -31.0 90.0 0

summon zombie 279.0 27 -31.0 {Tags:["ThirteenDunMob","13_dun_fir_floor"]}
summon zombie 285.0 27 -21.0 {Tags:["ThirteenDunMob","13_dun_fir_floor"]}
summon zombie 293.0 27 -19.0 {Tags:["ThirteenDunMob","13_dun_fir_floor"]}
summon zombie 303.0 27 -23.0 {Tags:["ThirteenDunMob","13_dun_fir_floor"]}
summon zombie 285.0 27 -41.0 {Tags:["ThirteenDunMob","13_dun_fir_floor"]}
summon zombie 293.0 27 -43.0 {Tags:["ThirteenDunMob","13_dun_fir_floor"]}
summon zombie 303.0 27 -39.0 {Tags:["ThirteenDunMob","13_dun_fir_floor"]}

scoreboard players set $floor 13_TowerFloor 1
scoreboard players set $mobs 13_TowerNowMobCnt 7
scoreboard objectives add 13_NextMobCheckTimer minecraft.custom:minecraft.play_time