
##剣を進める(常時)
execute as @e[type=armor_stand,tag=SixteenDunSwAr] at @s run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sword_front/step

##後ろに行く(デバッグ中は0.0にする)
execute at @s run tp @s ~ ~ ~-0.1

##ややこしいからプレイヤーの座標取得は一旦関数に飛ばす(デバッグ中は無効にしないとお話にならない)
execute at @s run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/place_check/get

##もしボスがバリアと接触したなら制限時間オーバーで負け
execute at @s if block ~ ~ ~ barrier run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/false_time

##自身のダメージ判定
execute at @s if entity @e[tag = BossAtkAr,distance = ..1.5] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/health/main

##剣が接触しているならダメージを与える
execute as @e[type=armor_stand,tag=SixteenDunSwArIron] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sward_damage/iron
execute as @e[type=armor_stand,tag=SixteenDunSwArDiamond] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sward_damage/diamond
execute as @e[type=armor_stand,tag=SixteenDunSwArSphene] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sward_damage/sphene

    ##単調に剣を放つ
        execute at @s if entity @a[scores={SixteenBossSkill=9}] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sword_front/main
    ##mainloop 1 再帰
    execute if entity @a[scores={SixteenBossSkill=10..}] run scoreboard players set @a SixteenBossSkill 0

    

##mainloop 2 skill 1
    ##8方向に剣を放つ
        execute at @s if entity @a[scores = {SixteenBossSkill2=50}] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sword_back/main

    ##後ろから攻撃
        execute at @s if entity @a[scores = {SixteenBossSkill2=80}] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sword_eleven/main
        execute at @s if entity @a[scores = {SixteenBossSkill2=90}] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sword_eleven/main

    execute if entity @a[scores={SixteenBossSkill2=95..}] run scoreboard players set @a SixteenBossSkill2 0

##mainlopp 3 
    ##スケルトンの召喚
        execute at @s if entity @a[scores = {SixteenBossSkill3=200}] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/summon_skelton/main
    execute if entity @a[scores={SixteenBossSkill3=200..}] run scoreboard players set @a SixteenBossSkill3 0

##mainloop 4
    ##プレイヤーの真上に剣を召喚(sphene)
        execute as @a[scores={SixteenBossSkill4=70},tag = BossBattle16] at @s run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sword_on/main
    execute if entity @a[scores={SixteenBossSkill4=120..}] run scoreboard players set @a SixteenBossSkill4 0

##mainloop 5
    ##8方向
        execute at @s if entity @a[scores = {SixteenBossSkill5=90}] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/sword_eleven/main_2
    execute if entity @a[scores={SixteenBossSkill5=131..}] run scoreboard players set @a SixteenBossSkill5 0


##ボスさんすまんな。このステージ専用の味方武器の処理もここでさせてな。
execute as @a[tag = DungeonPlay_16] if entity @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:54}}}] at @s run function mikatanserver:item/rod/through_16thboss/main