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

        scoreboard objectives add coal_ore_cnt minecraft.mined:minecraft.coal_ore
        scoreboard objectives add iron_ore_cnt minecraft.mined:minecraft.iron_ore
        scoreboard objectives add gold_ore_cnt minecraft.mined:minecraft.gold_ore
        scoreboard objectives add redstone_ore_cnt minecraft.mined:minecraft.redstone_ore
        scoreboard objectives add lapis_ore_cnt minecraft.mined:minecraft.lapis_ore
        scoreboard objectives add diamond_ore_cnt minecraft.mined:minecraft.diamond_ore
        scoreboard objectives add emerald_ore_cnt minecraft.mined:minecraft.emerald_ore
        scoreboard objectives add D_coal_ore_cnt minecraft.mined:minecraft.deepslate_coal_ore
        scoreboard objectives add D_iron_ore_cnt minecraft.mined:minecraft.deepslate_iron_ore
        scoreboard objectives add D_gold_ore_cnt minecraft.mined:minecraft.deepslate_gold_ore
        scoreboard objectives add D_redstone_ore_cnt minecraft.mined:minecraft.deepslate_redstone_ore
        scoreboard objectives add D_lapis_ore_cnt minecraft.mined:minecraft.deepslate_lapis_ore
        scoreboard objectives add D_diamond_ore_cnt minecraft.mined:minecraft.deepslate_diamond_ore
        scoreboard objectives add D_emerald_ore_cnt minecraft.mined:minecraft.deepslate_emerald_ore
    
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
    
    tellraw @a [{"text": "completed initialize version 1.6 system...","color": "yellow","italic": true}]
##ver 1.7
    scoreboard objectives add EBthroughArrowTimer dummy
    scoreboard objectives add throughArrowTimer dummy
    scoreboard objectives add AngelStoneFlag dummy
    scoreboard objectives add ForestStoneFlag dummy
    scoreboard objectives add GoldenEggFlag dummy
    scoreboard objectives add SpiritMassFlag dummy
    scoreboard objectives add FarmingStoneFlag dummy
    scoreboard objectives add NowMobCount dummy

    
    tellraw @a [{"text": "completed add stone method...","color": "green","italic": true}]

    #翠杖
    scoreboard objectives add jadewandcount minecraft.custom:minecraft.play_time

    scoreboard objectives add NowPlaceX dummy
    scoreboard objectives add NowPlaceY dummy

    scoreboard objectives add TMP dummy

    scoreboard objectives add HUNDRED dummy
    scoreboard players set num HUNDRED 100

    scoreboard objectives add farming_judge_bool dummy
    #ダンジョンクリア回数
    scoreboard objectives add DungeonClear_Num dummy

    ##number set
    scoreboard objectives add int dummy
    scoreboard players set $1 int 1
    scoreboard players set $2 int 2
    scoreboard players set $3 int 3
    scoreboard players set $4 int 4
    scoreboard players set $5 int 5
    scoreboard players set $6 int 6
    scoreboard players set $7 int 7
    scoreboard players set $8 int 8
    scoreboard players set $9 int 9
    scoreboard players set $10 int 10
    scoreboard players set $16 int 16
    scoreboard players set $60 int 60
    scoreboard players set $100 int 100
    scoreboard players set $190 int 190
    scoreboard players set $200 int 200
    scoreboard players set $256 int 256
    scoreboard players set $300 int 300
    scoreboard players set $333 int 333
    scoreboard players set $350 int 350
    scoreboard players set $373 int 373
    scoreboard players set $400 int 400
    scoreboard players set $1024 int 1024


    scoreboard objectives add ImaginStoneFlag dummy
    scoreboard objectives add LuckStoneFlag dummy

    team add OrangeTeam {"text": "【歴史の採掘者】"}
    team modify OrangeTeam color gold

    scoreboard objectives add DeathCnt_Tip deathCount

    scoreboard objectives add ender_field_loop dummy

    scoreboard objectives add field_EnderKillCnt killed:enderman

    scoreboard objectives add VillagerFlag minecraft.custom:minecraft.talked_to_villager

    scoreboard objectives add luckrodLoop dummy

    scoreboard objectives add aotd_plus20_flag dummy

    scoreboard objectives add BossHP dummy

    scoreboard objectives add EnderStoneFlag dummy

    ##ロッドタグ
    scoreboard objectives add embercount dummy
    scoreboard objectives add burtcount dummy
    
    ##鉱石
    scoreboard objectives add aquaselfcount minecraft.mined:minecraft.blue_concrete
    scoreboard objectives add jadeselfcount minecraft.mined:minecraft.green_concrete
    scoreboard objectives add hematiteselfcount minecraft.mined:minecraft.black_concrete
    scoreboard objectives add amethystselfcount minecraft.mined:minecraft.amethyst_block
    scoreboard objectives add oakselfcount minecraft.mined:minecraft.oak_log
    scoreboard objectives add doakselfcount minecraft.mined:minecraft.dark_oak_log

    ##ネザーエリア
    scoreboard objectives add nether_field_loop dummy

    ##5lvエンチャント
    scoreboard objectives add 5lvCount dummy

    scoreboard objectives add ManaBatchBool dummy

    ##クリスマス2022
    scoreboard objectives add redwoolselfcount minecraft.mined:minecraft.red_wool
    scoreboard objectives add bookselfcount minecraft.mined:minecraft.bookshelf

    ##フィールド用モブカウント
    scoreboard objectives add field_mobcount minecraft.custom:minecraft.mob_kills

    scoreboard objectives add ench_experiencecraft dummy

    ##attribute number
    scoreboard objectives add Enhancer.Attribute dummy

    ##boss hp減算用変数
    scoreboard objectives add boss_hp_checker dummy

    scoreboard objectives add dungeon_play_now dummy
    scoreboard objectives add ench_smeltingcraft dummy

    scoreboard objectives add deathafter dummy

    scoreboard objectives add GoddessStoneFlag dummy

    #キノコ付き棒感知
        scoreboard objectives add ARTIFACT minecraft.used:minecraft.warped_fungus_on_a_stick

        scoreboard objectives add ART.spd dummy
        scoreboard objectives add ART.atkd dummy
        scoreboard objectives add ART.atks dummy
        scoreboard objectives add ART.mana dummy
        scoreboard objectives add ART.luck dummy
        scoreboard objectives add ART.hp dummy

    scoreboard objectives add Dun_ROD minecraft.used:minecraft.carrot_on_a_stick

    scoreboard objectives add greenwoolselfcount minecraft.mined:minecraft.green_wool

    scoreboard objectives add p_headselfcount minecraft.mined:minecraft.player_head

    ##アクションバー表示設定
        #mode = 1 : 旧表示 mode = 0 : 新方式
        scoreboard objectives add PlayerUIMode dummy
        #0:何も表示しない 1-6:任意のスキル経験値を表示
        scoreboard objectives add PlayerUI_Skill dummy
        #残り時間(表示)
        scoreboard objectives add PlayerUI_Skill_Timer dummy


    
    tellraw @a [{"text": "completed initialize version 1.7 system...","color": "yellow","italic": true}]

tellraw @a [{"text": "初期化が完了しました！\n\n","color": "yellow"}]
tellraw @a [{"text": "ver : mikatan server main code ver1.6\n\n","color": "gold"},{"text": "     /reload\n","color": "light_purple"},{"text": "     を実行すると各スコアが再度生成されます","color": "gold"},{"text":"\n\n=====================================================","color": "aqua"}]
