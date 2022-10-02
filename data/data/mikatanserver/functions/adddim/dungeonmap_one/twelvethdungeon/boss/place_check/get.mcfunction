##ボスの現在のX座標を取得する
execute store result score $12_boss NowPlaceX run data get entity @s Pos[0]
execute as @a[tag=BossBattle12] store result score @s NowPlaceX run data get entity @s Pos[0]
##ボスの座標をオーバーしていないかをcheckをする
    #ここでNowPlaceXがプラスならボスよりも奥にいる
    execute as @a[tag=BossBattle12] run scoreboard players operation @s TMP = @s NowPlaceX
    execute as @a[tag=BossBattle12] run scoreboard players operation @s TMP -= $12_boss NowPlaceX
    #奥にいるプレイヤーを一マス戻す
    execute as @a[tag=BossBattle12,scores = {TMP = 0..300}] at @s run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/place_check/check
    execute as @a[tag=BossBattle12,scores = {TMP = 300..}] at @s run tellraw @a[name="mitsuki_kasane"] "この挙動はE2031(再現方法を確認できないエラー)として報告されています"

##たまにバグってめちゃくちゃ後退させられるのはスポーンよりメインループの方が早く動き始めるから？(スコアから減算されずその間プラスが維持されてしまう)