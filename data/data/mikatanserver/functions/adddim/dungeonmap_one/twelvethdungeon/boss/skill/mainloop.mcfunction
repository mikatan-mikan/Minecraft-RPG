##ボス視点
execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle11] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle11] resistance

##panda(当たり判定役)を自身のもとに(要らんくね？TODO:考える)
execute at @s run tp @e[type = panda , tag = TwelveDunBossHit1] ~ ~ ~
execute at @s run tp @e[type = panda , tag = TwelveDunBossHit2] ~ ~0.8 ~
##剣を進める(常時)
execute as @e[type=armor_stand,tag=TwelvethDunSwAr] at @s run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/sword_front/step

##後ろに行く(デバッグ中は0.0にする)
execute at @s run tp @s ~0.1 ~ ~

##ややこしいからプレイヤーの座標取得は一旦関数に飛ばす(デバッグ中は無効にしないとお話にならない)
execute at @s run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/place_check/get

##もしボスがバリアと接触したなら制限時間オーバーで負け
execute at @s if block ~ ~ ~ barrier run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/false_time

##自身のダメージ判定
execute at @s if entity @e[tag = BossAtkAr,distance = ..1.5] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/health/main

##剣が接触しているならダメージを与える
execute as @e[type=armor_stand,tag=TwelvethDunSwArIron] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/sward_damage/iron
execute as @e[type=armor_stand,tag=TwelvethDunSwArDiamond] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/sward_damage/diamond
execute as @e[type=armor_stand,tag=TwelvethDunSwArSphene] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/sward_damage/sphene

    ##単調に剣を放つ
        execute at @s if entity @a[scores={TwelveBossSkill=9}] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/sword_front/main
    ##mainloop 1 再帰
    execute if entity @a[scores={TwelveBossSkill=10..}] run scoreboard players set @a TwelveBossSkill 0

    

##mainloop 2 skill 1
    ##8方向に剣を放つ
        execute at @s if entity @a[scores = {TwelveBossSkill2=80}] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/sword_eleven/main
        execute at @s if entity @a[scores = {TwelveBossSkill2=90}] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/sword_eleven/main

    execute if entity @a[scores={TwelveBossSkill2=95..}] run scoreboard players set @a TwelveBossSkill2 0

##mainlopp 3 
    ##後ろから攻撃
        execute at @s if entity @a[scores = {TwelveBossSkill2=50}] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/skill/sword_back/main



##ボスさんすまんな。このステージ専用の味方武器の処理もここでさせてな。
execute as @a[tag = DungeonPlay_12] if entity @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:54}}}] at @s run function mikatanserver:item/rod/through_12thboss/main