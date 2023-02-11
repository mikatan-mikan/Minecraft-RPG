##ステータス用スコア管理

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
    #必要xp初期設定
        scoreboard players set @a speed-Lv 0
        scoreboard players set @a speedxp 0
        scoreboard players set @a needspeedxp 500
        scoreboard players set @a attackS-Lv 0
        scoreboard players set @a attackSxp 0
        scoreboard players set @a needattackSxp 100
        scoreboard players set @a ench-Lv 0
        scoreboard players set @a enchxp 0
        scoreboard players set @a needenchxp 15
        scoreboard players set @a hp-Lv 0
        scoreboard players set @a hpxp 0
        scoreboard players set @a needhpxp 39
        scoreboard players set @a attackD-Lv 0
        scoreboard players set @a attackDxp 0
        scoreboard players set @a needattackDxp 325
        scoreboard players set @a mana-Lv 0
        scoreboard players set @a manaxp 0
        scoreboard players set @a needmanaxp 1
        scoreboard players set @a luck-Lv 0
        scoreboard players set @a luckxp 0
        scoreboard players set @a needluckxp 3

    #mana stat count func
        scoreboard objectives add mana dummy
        scoreboard players set @a mana 0
        scoreboard objectives add manamax dummy
        scoreboard players set @a manamax 0
        scoreboard objectives add ticktimer minecraft.custom:minecraft.play_time



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

    ##初回ログイン検知
        scoreboard objectives add firstlogin minecraft.custom:minecraft.play_time
    ##死亡検知
        scoreboard objectives add deathflag deathCount
        scoreboard objectives add healthflag health
        scoreboard objectives add deathafter dummy
    ##追加鉱石判定
        scoreboard objectives add rubyselfcount minecraft.mined:minecraft.red_concrete
        scoreboard objectives add sapphiselfcount minecraft.mined:minecraft.light_blue_concrete
        scoreboard objectives add spheneselfcount minecraft.mined:minecraft.yellow_concrete
        scoreboard objectives add charoselfcount minecraft.mined:minecraft.purple_concrete
        scoreboard objectives add sunstoselfcount minecraft.mined:minecraft.orange_concrete


    ##ログイン判定
        #scoreboard objectives add LogCheck minecraft.custom:minecraft.play_time
        scoreboard objectives add LogCheck_Logger minecraft.custom:minecraft.leave_game
    ##initarize
        gamerule doFireTick false



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


        scoreboard objectives add MoveCheck minecraft.custom:minecraft.play_time
        scoreboard objectives add MoveCheck_dush minecraft.custom:minecraft.sprint_one_cm
        scoreboard objectives add MoveCheck_walk minecraft.custom:minecraft.walk_one_cm
        scoreboard objectives add TimerCrystalTime dummy