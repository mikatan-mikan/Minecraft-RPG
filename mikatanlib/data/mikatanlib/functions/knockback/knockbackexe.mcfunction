##ノックバックさせたいキャラに呼び出させる
    ##引数
    ## 攻撃したプレイヤーに対して : tag @s add Attacker
    ## XZへのふきとばし補正 : scoreboard players set $MK.k.Xpower MK.k.knockbackValue 100
    ## Yへのふきとばし補正 : scoreboard players set $MK.k.Ypower MK.k.knockbackValue 100
##position検知用のAEC
    # execute positioned 0.0 0.0 0.0 rotated as @p[tag=MK.k.Attacker] run summon area_effect_cloud ^ ^ ^0.4 {Tags:["MK.k.Knockback"]}
    execute rotated as @p[tag=MK.k.Attacker] run summon area_effect_cloud ^ ^ ^0.4 {Tags:["MK.k.Knockback"]}
    data modify storage mikatanlib:knockback Pos set from entity @e[type=area_effect_cloud,tag=MK.k.Knockback,sort=nearest,limit=1] Pos
    data modify storage mikatanlib:knockback Pos_Player set from entity @p[tag=MK.k.Attacker] Pos

## AECのpositionをスコアに
    data modify storage mikatanlib:knockback Pos[1] set value 0.32
    execute store result score $MK.k.KnockbackX MK.k.knockbackValue run data get storage mikatanlib:knockback Pos[0] 1000
    execute store result score $MK.k.KnockbackY MK.k.knockbackValue run data get storage mikatanlib:knockback Pos[1] 1000
    execute store result score $MK.k.KnockbackZ MK.k.knockbackValue run data get storage mikatanlib:knockback Pos[2] 1000
## playerのpositionをスコアに
    execute store result score $MK.k.KnockbackX_P MK.k.knockbackValue run data get storage mikatanlib:knockback Pos_Player[0] 1000
    execute store result score $MK.k.KnockbackY_P MK.k.knockbackValue run data get storage mikatanlib:knockback Pos_Player[1] 1000
    execute store result score $MK.k.KnockbackZ_P MK.k.knockbackValue run data get storage mikatanlib:knockback Pos_Player[2] 1000
## 座標の差分を算出
    scoreboard players operation $MK.k.KnockbackX MK.k.knockbackValue -= $MK.k.KnockbackX_P MK.k.knockbackValue
    scoreboard players operation $MK.k.KnockbackY MK.k.knockbackValue -= $MK.k.KnockbackY_P MK.k.knockbackValue
    scoreboard players operation $MK.k.KnockbackZ MK.k.knockbackValue -= $MK.k.KnockbackZ_P MK.k.knockbackValue
##ベクトルを補正する
    scoreboard players operation $MK.k.KnockbackX MK.k.knockbackValue *= $MK.k.Xpower MK.k.knockbackValue
    scoreboard players operation $MK.k.KnockbackY MK.k.knockbackValue *= $MK.k.Ypower MK.k.knockbackValue
    scoreboard players operation $MK.k.KnockbackZ MK.k.knockbackValue *= $MK.k.Xpower MK.k.knockbackValue
##Motionを適応する
    execute store result storage mikatanlib:knockback Pos[0] double 0.00001 run scoreboard players get $MK.k.KnockbackX MK.k.knockbackValue
    execute store result storage mikatanlib:knockback Pos[1] double 0.00001 run scoreboard players get $MK.k.KnockbackY MK.k.knockbackValue
    execute store result storage mikatanlib:knockback Pos[2] double 0.00001 run scoreboard players get $MK.k.KnockbackZ MK.k.knockbackValue
    data modify entity @s Motion set from storage mikatanlib:knockback Pos
##リセット
    tag @a remove MK.k.Attacker
    data remove storage mikatanlib:knockback Pos
    data remove storage mikatanlib:knockback Pos_Player
    scoreboard players reset $MK.k.KnockbackX
    scoreboard players reset $MK.k.KnockbackY
    scoreboard players reset $MK.k.KnockbackZ
    scoreboard players reset $MK.k.KnockbackX_P
    scoreboard players reset $MK.k.KnockbackY_P
    scoreboard players reset $MK.k.KnockbackZ_P
    schedule function mikatanlib:knockback/knockback_reset 1t