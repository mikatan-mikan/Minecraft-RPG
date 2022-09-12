tp @p 195.0 64 89.0 -90 0

#bossの初期セットを実行する
execute if score $bossloop 12thDunBossLoopBool matches 0 run schedule function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/main 10t


#bossloopを始める
scoreboard players set $bossloop 12thDunBossLoopBool 1


#ボスタグ付与
tag @p add BossBattle12