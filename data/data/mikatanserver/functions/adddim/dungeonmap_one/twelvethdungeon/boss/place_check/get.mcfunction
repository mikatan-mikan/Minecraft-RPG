##ボスの現在のX座標を取得する
execute store result score $12_boss NowPlaceX run data get entity @s Pos[0]
execute as @a[tag=BossBattle12] store result score @s NowPlaceX run data get entity @s Pos[0]
##ボスの座標をオーバーしていないかをcheckをする
    #ここでNowPlaceXがプラスならボスよりも奥にいる
    execute as @a[tag=BossBattle12] run scoreboard players operation @s NowPlaceX -= $12_boss NowPlaceX
    #奥にいるプレイヤーを一マス戻す
    execute as @a[tag=BossBattle12,scores = {NowPlaceX = 0..}] at @s run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/place_check/check