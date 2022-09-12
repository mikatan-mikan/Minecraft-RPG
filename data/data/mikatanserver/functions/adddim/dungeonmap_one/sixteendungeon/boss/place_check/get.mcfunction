##ボスの現在のY座標を取得する
execute store result score $16_boss NowPlaceY run data get entity @s Pos[2]
execute as @a[tag=BossBattle16] store result score @s NowPlaceY run data get entity @s Pos[2]
##ボスの座標をオーバーしていないかをcheckをする
    #ここでNowPlaceYがプラスならボスよりも奥にいる
    execute as @a[tag=BossBattle16] run scoreboard players operation @s NowPlaceY -= $16_boss NowPlaceY
    #奥にいるプレイヤーを一マス戻す
    execute as @a[tag=BossBattle16,scores = {NowPlaceY = ..0}] at @s run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/place_check/check