tellraw @a [{"text": "=====================================================\n\n","color": "aqua"},{"text": "mikatan lib を初期化しています","color": "yellow"}]
    #Θとφの本体
    scoreboard objectives add MK.v.Theta dummy
    scoreboard objectives add MK.v.Phi dummy
    #Θとφのsincos計算スコア
    scoreboard objectives add MK.v.sinTheta dummy
    scoreboard objectives add MK.v.cosTheta dummy
    scoreboard objectives add MK.v.sinPhi dummy
    scoreboard objectives add MK.v.cosPhi dummy
    #Theta マイナスプラス判定
    scoreboard objectives add MK.v.ThetaBool dummy

    #東西南北判定スコア
    scoreboard objectives add MK.v.sinBool dummy
    scoreboard objectives add MK.v.cosBool dummy

    #motionスコア
    scoreboard objectives add MK.v.MotionX dummy
    scoreboard objectives add MK.v.MotionY dummy
    scoreboard objectives add MK.v.MotionZ dummy
    scoreboard objectives add MK.v.VecValue dummy
tellraw @a [{"text": "initialize vector method...","color": "green","italic": true}]

    #UUID[0]代入スコア
    scoreboard objectives add MK.r.UUID_0 dummy

    #乱数の範囲
    scoreboard objectives add MK.r.RandValue dummy

tellraw @a [{"text": "initialize rand method...","color": "green","italic": true}]

    #sin結果
    scoreboard objectives add MK.s.Sin dummy
    #sinΘ Θ部分(代入される値)
    scoreboard objectives add MK.s.Theta dummy

tellraw @a [{"text": "initialize sin method...","color": "green","italic": true}]

    #knockback storage初期化
    scoreboard objectives add MK.k.knockbackValue dummy

tellraw @a [{"text": "initialize knockback method...","color": "green","italic": true}]


tellraw @a [{"text": "初期化が完了しました！\n\n","color": "yellow"}]
tellraw @a [{"text": "ver : mikatan lib ver1.1\n\n","color": "gold"},{"text": "     /function mikatanlib:_explanation\n","color": "light_purple"},{"text": "     を実行すると各メソッドの使用方法が表示されます","color": "gold"},{"text":"\n\n=====================================================","color": "aqua"}]