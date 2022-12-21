tag @a[tag=DungeonPlay_9,tag=!BossBattle9] add BossBattle9
##ボス視点
#execute if score @s MobNowHP matches ..300 run clear @a[tag=BossBattle11] #boats
execute if score @s MobNowHP matches ..300 run effect clear @a[tag=BossBattle11] resistance

execute unless score @a[tag=BossBattle19,limit=1] NineteenBossSkill3 matches 400..470 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~

##剣を進める(常時)
execute as @e[type=armor_stand,tag=NineteenDunSwAr] at @s run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/_sword

##自身のダメージ判定
execute at @s if entity @e[tag = BossAtkAr,distance = ..1.5] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/health/main

##剣が接触しているならダメージを与える
execute as @e[type=armor_stand,tag=NineteenDunSwArIron] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/sward_damage/iron
execute as @e[type=armor_stand,tag=NineteenDunSwArDiamond] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/sward_damage/diamond
execute as @e[type=armor_stand,tag=NineteenDunSwArInca] at @s if entity @a[distance=..1] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/sward_damage/inca

##mainloop -> 移動用ループ
    ##移動関数の呼び出し
        execute at @s run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/main
    ##mainloop 1 再帰
    execute if entity @a[tag=BossBattle19,scores={NineteenBossSkill=10..}] run scoreboard players set @a NineteenBossSkill 0

    

##mainloop 2 skill 1
    ##10tick周期のループを作成
        scoreboard players operation $TMP NineteenBossSkill2 = @a[limit=1,tag=BossBattle19,scores={NineteenBossSkill2=0..100}] NineBossSkill2
        scoreboard players operation $TMP NineteenBossSkill2 %= $5 int
    ##プレイヤーに剣
        execute at @s if score $TMP NineteenBossSkill2 matches 3 run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/sword_front/main
    ##72方向に剣を放つ
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill2=30}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/sword_all/main
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill2=50}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/sword_all/main
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill2=70}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/sword_all/main
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill2=90}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/sword_all/main

    execute if entity @a[tag=BossBattle19,scores={NineteenBossSkill2=100..}] run scoreboard players set @a NineteenBossSkill2 0

##mainlopp 3 
    ##3tp ->tp毎にプレイヤー地点・ボス地点に爆発アマスタ設置->爆発後その座標にモブ召喚->一定タイミングにモブがいればボスが回復
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill3=300}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/boss/teleport_and_setbomb
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill3=320}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/boss/teleport_and_setbomb
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill3=340}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/boss/teleport_and_setbomb_3
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill3=360}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/move/boss/bomb_and_summon

    ##2tp ->tpした後に16発
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill3=400}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/teleport_rot/tp
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill3=402..434}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/teleport_rot/sword_bef
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill3=436}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/teleport_rot/tp
        execute at @s if entity @a[tag=BossBattle19,scores = {NineteenBossSkill3=438..470}] run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/teleport_rot/sword_bef

    execute if entity @a[tag=BossBattle19,scores={NineteenBossSkill3=700..}] run scoreboard players set @a NineteenBossSkill3 0

##mainloop 4(skill)
    ##mobがいればheal
        execute if entity @a[tag=BossBattle19,scores = {NineteenBossSkill4=100}] if entity @e[type=zombie,tag=NineteenBossSkillMob] at @s run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/boss/skill/_healing/main


execute at @s run tag @a[distance=..20] add BossBattle19

##ボスさんすまんな。このステージ専用の味方武器の処理もここでさせてな。
execute as @a[tag = DungeonPlay_19] if entity @s[scores={Dun_ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:54}}}] at @s run function mikatanserver:item/rod/through_19thboss/main