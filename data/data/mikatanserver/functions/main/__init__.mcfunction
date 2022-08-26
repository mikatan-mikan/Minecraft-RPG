###Copyright mitsukiGroup 2021
###This software is released the MIT License


##ステータス用スコア管理
tellraw @a [{"text": "=====================================================\n\n","color": "aqua"},{"text": "mikatan server main code を初期化しています","color": "yellow"}]
##closed β test ~

    #lvカウント
        scoreboard objectives add speed-Lv dummy
        scoreboard objectives add attackS-Lv dummy
        scoreboard objectives add ench-Lv dummy
        scoreboard objectives add hp-Lv dummy
        scoreboard objectives add attackD-Lv dummy
        scoreboard objectives add mana-Lv dummy
        scoreboard objectives add luck-Lv dummy
    #xpカウント
        scoreboard objectives add speedxp dummy
        scoreboard objectives add attackSxp dummy
        scoreboard objectives add enchxp dummy
        scoreboard objectives add hpxp dummy
        scoreboard objectives add attackDxp dummy
        scoreboard objectives add manaxp dummy
        scoreboard objectives add luckxp dummy
    #必要xpカウント
        scoreboard objectives add needspeedxp dummy
        scoreboard objectives add needattackSxp dummy
        scoreboard objectives add needenchxp dummy
        scoreboard objectives add needhpxp dummy
        scoreboard objectives add needattackDxp dummy
        scoreboard objectives add needmanaxp dummy
        scoreboard objectives add needluckxp dummy
    #mana stat count func
        scoreboard objectives add mana dummy
        scoreboard objectives add manamax dummy
        scoreboard objectives add manatimer minecraft.custom:minecraft.play_time
    ##Lvアップ判定用
    #石系統採掘数(speed)
        scoreboard objectives add stonecount minecraft.mined:minecraft.stone
        scoreboard objectives add cobblestonecount minecraft.mined:minecraft.cobblestone
        scoreboard objectives add deepslatecount minecraft.mined:minecraft.deepslate
        scoreboard objectives add NRtonecount minecraft.mined:minecraft.netherrack
        scoreboard objectives add EStonecount minecraft.mined:minecraft.end_stone
    
    #モブ討伐数(attack speed)
        scoreboard objectives add mobcount minecraft.custom:minecraft.mob_kills

    #エンチャント回数(mana)
        scoreboard objectives add enchantcount minecraft.custom:minecraft.enchant_item

    #村人取引回数(health boost)
        scoreboard objectives add tradecount minecraft.custom:minecraft.traded_with_villager

    #木材採掘数(attack damage)
        scoreboard objectives add oakcount minecraft.mined:minecraft.oak_log
        scoreboard objectives add acaciacount minecraft.mined:minecraft.acacia_log
        scoreboard objectives add junglecount minecraft.mined:minecraft.jungle_log
        scoreboard objectives add sprucecount minecraft.mined:minecraft.spruce_log
        scoreboard objectives add birchcount minecraft.mined:minecraft.birch_log
        scoreboard objectives add darkoakcount minecraft.mined:minecraft.dark_oak_log
        scoreboard objectives add cristoncount minecraft.mined:minecraft.crimson_stem
        scoreboard objectives add warpedcount minecraft.mined:minecraft.warped_stem

    #釣り回数(luck)
        scoreboard objectives add fishingcount minecraft.custom:minecraft.fish_caught
    tellraw @a [{"text": "initialize main method...","color": "green","italic": true}]
    ##鉱石復活用スコア
        scoreboard objectives add removesapAr dummy
    ##感知スコア
    #ニンジン付き棒感知
        scoreboard objectives add ROD minecraft.used:minecraft.carrot_on_a_stick
    #レア泥検知
        scoreboard objectives add zombiecount minecraft.killed:minecraft.zombie
        scoreboard objectives add creepercount minecraft.killed:minecraft.creeper
    ##masic用スコア
        #lightningrod
            scoreboard objectives add lightningcount dummy
        #windrod
            scoreboard objectives add windmasiccount dummy
    tellraw @a [{"text": "initialize masic method...","color": "green","italic": true}]
    ##初回ログイン検知
        scoreboard objectives add firstlogin minecraft.custom:minecraft.play_time
    ##死亡検知
        scoreboard objectives add deathflag deathCount
    ##追加鉱石判定
        scoreboard objectives add rubyselfcount minecraft.mined:minecraft.red_concrete
        scoreboard objectives add sapphiselfcount minecraft.mined:minecraft.light_blue_concrete
        scoreboard objectives add spheneselfcount minecraft.mined:minecraft.yellow_concrete
        scoreboard objectives add charoselfcount minecraft.mined:minecraft.purple_concrete
        scoreboard objectives add sunstoselfcount minecraft.mined:minecraft.orange_concrete
    tellraw @a [{"text": "initialize oredimention method...","color": "green","italic": true}]

    ##ログイン判定
        #scoreboard objectives add LogCheck minecraft.custom:minecraft.play_time
        scoreboard objectives add LogCheck_Logger minecraft.custom:minecraft.leave_game
    ##initarize
        gamerule doFireTick false
    tellraw @a [{"text": "completed initialize β 1.0 system...","color": "yellow","italic": true}]


##open β test ~
    #farming luck
        scoreboard objectives add FarmingLuckPT dummy
        #farming luck用 農業スコア
            #アメジストをルートテーブルから出して判定
            scoreboard objectives add SmallAmethyst minecraft.picked_up:minecraft.small_amethyst_bud
            scoreboard players set @s FarmingLuckPT 0

    #鉱石マップ不正採取
        scoreboard objectives add basaltCount minecraft.mined:minecraft.smooth_basalt

    #魔法スコア
        scoreboard objectives add FrozenBlockS dummy
        scoreboard objectives add frozenmasiccount dummy
    tellraw @a [{"text": "initialize masic and farmingluck and ore method...","color": "green","italic": true}]
    tellraw @a [{"text": "completed initialize open β and 1.0 system...","color": "yellow","italic": true}]
    #オレンジ
        scoreboard objectives add MoveCheck minecraft.custom:minecraft.play_time
        scoreboard objectives add MoveCheck_dush minecraft.custom:minecraft.sprint_one_cm
        scoreboard objectives add MoveCheck_jump minecraft.custom:minecraft.jump
        scoreboard objectives add MoveCheck_shift minecraft.custom:minecraft.sneak_time
        scoreboard objectives add MoveCheck_walk minecraft.custom:minecraft.walk_one_cm
        scoreboard objectives add TimerCrystalTime dummy

    scoreboard objectives add RewardPoint dummy
    scoreboard objectives setdisplay list RewardPoint

##version 1.1~

    #星剣
    scoreboard objectives add CometSwordTimer dummy

    #tact_one
    scoreboard objectives add TactOneTimer dummy

    #crafter++ エンチャント回数検知(advancements用)
    scoreboard objectives add CrafterEnchCnt dummy

    #fireball
    scoreboard objectives add PFireBallCnt dummy

    scoreboard objectives add AndesiteCount minecraft.mined:minecraft.andesite
    scoreboard objectives add DioriteCount minecraft.mined:minecraft.diorite
    scoreboard objectives add GraniteCount minecraft.mined:minecraft.granite
    tellraw @a [{"text": "completed initialize version 1.1 system...","color": "yellow","italic": true}]

    #土xp判定
    scoreboard objectives add DirtCount minecraft.mined:minecraft.dirt
    scoreboard objectives add GrassCount minecraft.mined:minecraft.grass_block

    #黒曜石・ネザー水晶・金鉱石採掘判定
    scoreboard objectives add ObsidianCount minecraft.mined:minecraft.obsidian
    scoreboard objectives add QuartzCount minecraft.mined:minecraft.nether_quartz_ore
    scoreboard objectives add GoldCount minecraft.mined:minecraft.gold_ore

    scoreboard objectives add effortmaterialCount dummy

    scoreboard objectives add CarrotOnAStickDamageStore dummy
    scoreboard objectives add CarrotOnAStickDamageStoreCalc dummy

    scoreboard objectives add peridotselfcount minecraft.mined:minecraft.lime_concrete

    #現在hp
    scoreboard objectives add MobNowHP dummy
    scoreboard objectives add MobAngry dummy
    scoreboard objectives add EnderSlayerLevel dummy
    scoreboard objectives add CubismLevel dummy
    scoreboard objectives add CubismLoop dummy

    #manacharger
    scoreboard objectives add manachargercount minecraft.custom:minecraft.play_time

    #rhodochrosite
    scoreboard objectives add rhodochrositeselfcount minecraft.mined:minecraft.pink_concrete

    #chaos rod
    scoreboard objectives add ChaosArExeTimer dummy

    #定数
    scoreboard objectives add ONE dummy
    scoreboard objectives add TWO dummy
    scoreboard objectives add THREE dummy
    scoreboard objectives add FOUR dummy
    scoreboard objectives add FIVE dummy
    scoreboard objectives add SIX dummy
    scoreboard objectives add SEVEN dummy
    scoreboard objectives add EIGTH dummy
    scoreboard objectives add NINE dummy
    scoreboard players set num ONE 1
    scoreboard players set num TWO 2
    scoreboard players set num THREE 3
    scoreboard players set num FOUR 4
    scoreboard players set num FIVE 5
    scoreboard players set num SIX 6
    scoreboard players set num SEVEN 7
    scoreboard players set num EIGTH 8
    scoreboard players set num NINE 9
    
    #through
    scoreboard objectives add throughSwordTimer dummy

    scoreboard objectives add NowDic dummy

    #実績
    scoreboard objectives add lifestealcraft dummy
    scoreboard objectives add enderslayercraft dummy


##ver1.4 Christmas Update
    scoreboard objectives add iceselfcount minecraft.mined:minecraft.packed_ice
    scoreboard objectives add spruceselfcount minecraft.mined:minecraft.spruce_log
    scoreboard objectives add sprleavesselfcount minecraft.mined:minecraft.spruce_leaves

    ##giant killar
    scoreboard objectives add GiantKillarLevel dummy
    scoreboard objectives add PHealth dummy
    scoreboard objectives add giantkillarcount dummy

    ##ポテトクワ
    scoreboard objectives add potatocount minecraft.mined:minecraft.potatoes
    scoreboard objectives add potatohavecount dummy

    scoreboard objectives add farmbool dummy
    scoreboard objectives add farmbool_ dummy
    tellraw @a [{"text": "completed initialize version 1.4 system...","color": "yellow","italic": true}]


    scoreboard objectives add field_loop dummy
    scoreboard objectives add spawn_count dummy


    scoreboard objectives add giantkillarLoop dummy

    scoreboard objectives add LogCheck_Timer minecraft.custom:minecraft.play_time

    
    team add IceTeam {"text": "【氷結の展開者】"}
    team modify IceTeam color aqua

    scoreboard objectives add RotChangeFlag dummy
    scoreboard objectives add ResultRot_0 dummy
    scoreboard objectives add RotCalc dummy

    tellraw @a [{"text": "completed initialize version 1.5 system...","color": "yellow","italic": true}]

    scoreboard objectives add ReapingTimer2 dummy
    scoreboard objectives add limetimer minecraft.custom:minecraft.play_time

    scoreboard objectives add megiddoLoop dummy

    scoreboard objectives add EnchanterItemCount dummy
    scoreboard objectives add EnchanterItemCount2 dummy
    scoreboard objectives add EnchanterItemCount3 dummy
    scoreboard objectives add EnchanterItemCount4 dummy
    scoreboard objectives add EnchanterItemCount5 dummy
    scoreboard objectives add EnchanterItemCount6 dummy
    scoreboard objectives add EnchanterItemCount7 dummy
    scoreboard objectives add EnchanterItemCount8 dummy

    scoreboard objectives add 40lvCount dummy
    scoreboard objectives add 60lvCount dummy

##ver 1.5
    scoreboard objectives add NBthroughSwordTimer dummy

##ver 1.6
    scoreboard objectives add Boost dummy
    scoreboard objectives add AtkBoost_1 dummy

    scoreboard objectives add impact_timer dummy
##ver 1.7
    scoreboard objectives add EBthroughArrowTimer dummy
    scoreboard objectives add throughArrowTimer dummy
    scoreboard objectives add AngelStoneFlag dummy
    scoreboard objectives add ForestStoneFlag dummy
    scoreboard objectives add NowMobCount dummy

    #翠杖
    scoreboard objectives add jadewandcount minecraft.custom:minecraft.play_time

    scoreboard objectives add NowPlaceX dummy
    scoreboard objectives add NowPlaceY dummy

    scoreboard objectives add TMP dummy

    scoreboard objectives add HUNDRED dummy
    scoreboard players set num HUNDRED 10

    scoreboard objectives add farming_judge_bool dummy
    #ダンジョンクリア回数
    scoreboard objectives add DungeonClear_Num dummy

tellraw @a [{"text": "初期化が完了しました！\n\n","color": "yellow"}]
tellraw @a [{"text": "ver : mikatan server main code ver1.0\n\n","color": "gold"},{"text": "     /reload\n","color": "light_purple"},{"text": "     を実行すると各スコアが再度生成されます","color": "gold"},{"text":"\n\n=====================================================","color": "aqua"}]
