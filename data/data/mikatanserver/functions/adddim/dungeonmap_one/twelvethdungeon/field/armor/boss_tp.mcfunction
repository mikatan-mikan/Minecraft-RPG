tp @p 195.0 64 89.0 -90 0
tag @p[tag=DungeonPlay_12,tag=!BossBattle12] add BossBattle12

#bossの初期セットを実行する
execute if score $bossloop 12thDunBossLoopBool matches 0 run schedule function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/main 10t


#bossloopを始める
schedule function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/score_change 20t