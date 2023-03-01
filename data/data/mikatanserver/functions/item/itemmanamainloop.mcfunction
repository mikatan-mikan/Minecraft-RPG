##CustomModelData使用済みメモ
#carrot_on_a_stick                          ~24



##ROD
#teleportROD mana:75
execute as @s[scores={mana=75..},nbt={SelectedItem:{tag:{CustomModelData:1}}},predicate=mikatanserver:overworld] at @s if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air if block ^ ^ ^4 air if block ^ ^ ^5 air if block ^ ^ ^6 air if block ^ ^ ^7 air if block ^ ^ ^8 air run function mikatanserver:item/rod/aote
#speedBuffer mana:10
execute as @s[scores={mana=10..},nbt={SelectedItem:{tag:{CustomModelData:2}}}] run function mikatanserver:item/rod/speedbuffer
#lightningROD mana:25
execute as @s[scores={mana=25..},nbt={SelectedItem:{tag:{CustomModelData:9}}}] at @s run function mikatanserver:item/rod/lightningrod/main
#windROD mana:35
execute as @s[scores={mana=35..},nbt={SelectedItem:{tag:{CustomModelData:12}}}] at @s run function mikatanserver:item/rod/windrod/main
#frozenROD mana:40
execute as @s[scores={mana=60..},nbt={SelectedItem:{tag:{CustomModelData:17}}}] unless entity @s[nbt={SelectedItem:{tag:{tier:2}}}] at @s run function mikatanserver:item/rod/frozenrod/main
execute as @s[scores={mana=100..},nbt={SelectedItem:{tag:{CustomModelData:17}}}] if entity @s[nbt={SelectedItem:{tag:{tier:2}}}] at @s run function mikatanserver:item/rod/frozenrod_2/main
#tact mana:30
execute as @s[scores={mana=30..},nbt={SelectedItem:{tag:{CustomModelData:23}}}] at @s run function mikatanserver:item/rod/tact/one/main
#fireball mana:27
execute as @s[scores={mana=27..},nbt={SelectedItem:{tag:{CustomModelData:24}}}] at @s run function mikatanserver:item/rod/fireball/main
#fireball mana:55
execute as @s[scores={mana=55..},nbt={SelectedItem:{tag:{CustomModelData:25}}}] at @s run function mikatanserver:item/rod/enderrod/main
#villager tp mana:15
execute as @s[scores={mana=15..},nbt={SelectedItem:{tag:{CustomModelData:27}}}] at @s run function mikatanserver:item/rod/villagertp/main
#summon zombie mana:20
execute as @s[scores={mana=20..},nbt={SelectedItem:{tag:{CustomModelData:28}},Inventory:[{id:"minecraft:diamond_block"}]}] at @s run function mikatanserver:item/rod/summonzombie/main
#healingrod mana:35
execute as @s[scores={mana=30..},nbt={SelectedItem:{tag:{CustomModelData:34}}}] at @s run function mikatanserver:item/rod/healing/main
#just guard mana:5
execute as @s[scores={mana=5..},nbt={SelectedItem:{tag:{CustomModelData:35}}}] at @s run function mikatanserver:item/rod/justguard/main
#chaos rod mana:50
execute as @s[scores={mana=50..},nbt={SelectedItem:{tag:{CustomModelData:36}}}] at @s run function mikatanserver:item/rod/chaos/main
#burt rod mana:35
execute as @s[scores={mana=35..},nbt={SelectedItem:{tag:{CustomModelData:39}}}] at @s run function mikatanserver:item/rod/burt/main
#megiddo rod mana:45
execute as @s[scores={mana=45..},nbt={SelectedItem:{tag:{CustomModelData:44}}}] at @s run function mikatanserver:item/rod/megiddo/main
#impact rod mana:50
execute as @s[scores={mana=50..},nbt={SelectedItem:{tag:{CustomModelData:47}}}] at @s run function mikatanserver:item/rod/impact/main
#spirit rod:mana45
execute as @s[scores={mana=45..},nbt={SelectedItem:{tag:{CustomModelData:65}}}] at @s run function mikatanserver:item/rod/spirit/main
#ruins rod:mana40
execute as @s[scores={mana=40..},nbt={SelectedItem:{tag:{CustomModelData:85}}}] at @s run function mikatanserver:item/rod/ruins/main
#jungle sword:mana40
execute as @s[scores={mana=45..},nbt={SelectedItem:{tag:{CustomModelData:101}}}] at @s run function mikatanserver:item/rod/jungle_sword/main
#hurricane rod:mana25
execute as @s[scores={mana=25..},nbt={SelectedItem:{tag:{CustomModelData:177}}}] at @s run function mikatanserver:item/rod/hurricane/main

#想剣
execute as @s[scores={mana=100..},nbt={SelectedItem:{tag:{CustomModelData:20}}}] at @s run function mikatanserver:item/rod/memory_sword/main
#飛剣
execute as @s[scores={mana=25..},nbt={SelectedItem:{tag:{CustomModelData:21}}}] at @s run function mikatanserver:item/rod/flying_sword/main
#星剣
execute as @s[scores={mana=15..},nbt={SelectedItem:{tag:{CustomModelData:22}}}] at @s run function mikatanserver:item/rod/comet_sword/main
#蜘蛛剣
execute as @s[scores={mana=40..},nbt={SelectedItem:{tag:{CustomModelData:26}}}] at @s run function mikatanserver:item/rod/reaping/main
execute as @s[scores={mana=40..},nbt={SelectedItem:{tag:{CustomModelData:43}}}] at @s run function mikatanserver:item/rod/reaping/2_high/check
#mana charger
execute as @s[scores={manachargercount=20..},nbt={SelectedItem:{tag:{CustomModelData:31}}}] run function mikatanserver:item/rod/manacharger/main
#投剣:45
execute as @s[scores={mana=45..},nbt={SelectedItem:{tag:{CustomModelData:37}}}] at @s run function mikatanserver:item/rod/through/main
#luck rod
execute as @s[scores={mana=60..},nbt={SelectedItem:{tag:{CustomModelData:63}}}] at @s run function mikatanserver:item/rod/luck/main
#rare stone wand mana:0 -> 追加効果で変動
execute as @s[scores={jadewandcount = 200..},nbt={SelectedItem:{tag:{CustomModelData:52}}}] at @s run function mikatanserver:item/rod/rare_stone_wand/main
#spirit wand mana:100
execute as @s[scores={mana = 100..},nbt={SelectedItem:{tag:{CustomModelData:54}}}] at @s run function mikatanserver:item/rod/spirit_wand/main
#rare stone wand mana:0 -> 追加効果で変動
execute as @s[scores={jadewandcount = 200..},nbt={SelectedItem:{tag:{CustomModelData:59}}}] at @s run function mikatanserver:item/rod/rare_stone_wand_2/main
# aspect of the dragon
execute as @s[scores={mana = 100..},nbt={SelectedItem:{tag:{CustomModelData:64}}}] at @s run function mikatanserver:item/rod/aspect_of_the_dragon/main
#ember
execute as @s[scores={mana = 40..},nbt={SelectedItem:{tag:{CustomModelData:69}}}] at @s run function mikatanserver:item/rod/ember/main
#pointer
execute as @s[scores={mana = 50..},nbt={SelectedItem:{tag:{CustomModelData:73}}}] at @s run function mikatanserver:item/rod/pointer/main
#crystal
execute as @s[scores={mana = 100..},nbt={SelectedItem:{tag:{CustomModelData:75}}}] at @s run function mikatanserver:item/rod/crystal/main
# aspect of the end
execute as @s[scores={mana = 50..},nbt={SelectedItem:{tag:{CustomModelData:76}}}] at @s anchored eyes if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air if block ^ ^ ^4 air if block ^ ^ ^5 air if block ^ ^ ^6 air if block ^ ^ ^7 air if block ^ ^ ^8 air run function mikatanserver:item/rod/aspect_of_the_end/main
#投剣:45
execute as @s[scores={mana=45..},nbt={SelectedItem:{tag:{CustomModelData:78}}}] at @s run function mikatanserver:item/rod/through_2/main
#pumpkin:30
execute as @s[scores={mana=30..},nbt={SelectedItem:{tag:{CustomModelData:82,pumpkin_rod:true}}}] at @s run function mikatanserver:item/rod/pumpkin/main
#tact mana:50
execute as @s[scores={mana=50..},nbt={SelectedItem:{tag:{CustomModelData:93}}}] at @s run function mikatanserver:item/rod/tact/two/main
#ruins tact mana:45
execute as @s[scores={mana=45..},nbt={SelectedItem:{tag:{CustomModelData:99}}}] at @s run function mikatanserver:item/rod/tact/three/main
#rupture mana:55
execute as @s[scores={mana=55..},nbt={SelectedItem:{tag:{CustomModelData:98}}}] at @s run function mikatanserver:item/rod/rupture/main
#gravity mana:40
execute as @s[scores={mana=40..},nbt={SelectedItem:{tag:{CustomModelData:107}}}] at @s run function mikatanserver:item/rod/gravity/main
#golem mana:45
execute as @s[scores={mana=45..},nbt={SelectedItem:{tag:{CustomModelData:108}}}] at @s run function mikatanserver:item/rod/golem/main
#bullet mana:30
execute as @s[scores={mana=45..},nbt={SelectedItem:{tag:{CustomModelData:118}}}] at @s run function mikatanserver:item/rod/bullet/main
#devil mana:30
execute as @s[scores={devilwandcount = 200..},nbt={SelectedItem:{tag:{CustomModelData:120}}}] at @s run function mikatanserver:item/rod/devil/main
#ancient mana:30
execute as @s[scores={mana=10..},nbt={SelectedItem:{tag:{CustomModelData:122}}}] at @s run function mikatanserver:item/rod/ancient/main
#mallet mana:40
execute as @s[scores={mana=40..},nbt={SelectedItem:{tag:{CustomModelData:124}}}] at @s run function mikatanserver:item/rod/mallet/main
#violin mana:65
execute as @s[scores={mana=65..},nbt={SelectedItem:{tag:{CustomModelData:125}}}] at @s run function mikatanserver:item/rod/violin/main
#saxophone mana:50
execute as @s[scores={mana=50..},nbt={SelectedItem:{tag:{CustomModelData:126}}}] at @s run function mikatanserver:item/rod/saxophone/main
#flute mana:50
execute as @s[scores={mana=50..},nbt={SelectedItem:{tag:{CustomModelData:127}}}] at @s run function mikatanserver:item/rod/flute/main
#devil mana:30
execute as @s[scores={devilwandcount = 200..},nbt={SelectedItem:{tag:{CustomModelData:132}}}] at @s run function mikatanserver:item/rod/devil_2/main


#純真エンチャント
execute as @s[scores={mana=70..},nbt={SelectedItem:{tag:{inocent:[1]}}}] at @s run function mikatanserver:item/rod/inocent_ench/main
#純真エンチャント
execute as @s[scores={mana=70..},nbt={SelectedItem:{tag:{inocent:[2]}}}] at @s run function mikatanserver:item/rod/inocent_ench/main_2


##tp item
execute as @s[scores={mana=5..},nbt={SelectedItem:{tag:{CustomModelData:7}}},predicate=mikatanserver:overworld] at @s if block ~ ~3 ~ air run function mikatanserver:item/rod/plusteleporter
execute as @s[scores={mana=5..},nbt={SelectedItem:{tag:{CustomModelData:8}}},predicate=mikatanserver:overworld] at @s if block ~ ~-3 ~ air run function mikatanserver:item/rod/minusteleporter


##dungeon
#dungeon first
execute as @s[scores={AllLV=10..},nbt={SelectedItem:{tag:{CustomModelData:10}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/first/init
#dungeon second
execute as @s[scores={AllLV=35..},nbt={SelectedItem:{tag:{CustomModelData:11}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/second/init
#dungeon third
execute as @s[scores={AllLV=50..},nbt={SelectedItem:{tag:{CustomModelData:13}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/third/init
#dungeon fourth
execute as @s[scores={AllLV=60..},nbt={SelectedItem:{tag:{CustomModelData:14}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/fourth/init
#dungeon fifth
execute as @s[scores={AllLV=75..},nbt={SelectedItem:{tag:{CustomModelData:18}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/fifth/init
#dungeon sixth
execute as @s[scores={AllLV=90..},nbt={SelectedItem:{tag:{CustomModelData:19}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/sixth/init
#dungeon sevth
execute as @s[scores={AllLV=120..},nbt={SelectedItem:{tag:{CustomModelData:29}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/sevth/init
#dungeon eigth
execute as @s[scores={AllLV=140..},nbt={SelectedItem:{tag:{CustomModelData:30}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/eigth/init
#dungeon eigth
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:42}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/nineth/init
#dungeon tenth
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:45}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/tenth/init
#dungeon eleventh
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:49}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/eleventh/init
#dungeon twelveth
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:53}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twelveth/init
#dungeon thirteen
execute as @s[scores={AllLV=80..},nbt={SelectedItem:{tag:{CustomModelData:57}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/thirteen/init
#dungeon fourteen
execute as @s[scores={AllLV=95..,QUEST_ENDER_LEVEL=3..},nbt={SelectedItem:{tag:{CustomModelData:66}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/fourteen/init
#dungeon fifteen
execute as @s[scores={AllLV=85..,QUEST_NETHER_LEVEL=10..},nbt={SelectedItem:{tag:{CustomModelData:68}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/fifteen/init

#dungeon fourteen
execute as @s[scores={AllLV=105..},nbt={SelectedItem:{tag:{CustomModelData:77}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/sixteen/init
#dungeon thirteen
execute as @s[scores={AllLV=125..},nbt={SelectedItem:{tag:{CustomModelData:86}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/seventeen/init
#dungeon eightteen
execute as @s[scores={AllLV=135..},nbt={SelectedItem:{tag:{CustomModelData:87}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/eightteen/init
#dungeon nineteen
execute as @s[scores={AllLV=130..},nbt={SelectedItem:{tag:{CustomModelData:97}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/nineteen/init
#dungeon 20
execute as @s[scores={AllLV=150..,RewardPoint=3500..},nbt={SelectedItem:{tag:{CustomModelData:102}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twenty/init
#dungeon twentyone
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:104}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentyone/init
#dungeon twentytwo
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:105}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentytwo/init
#dungeon fourth
execute as @s[scores={luck-Lv=65..,attackS-Lv=65..,attackD-Lv=65..,mana-Lv=65..,speed-Lv=65..,hp-Lv=65..},nbt={SelectedItem:{tag:{CustomModelData:119}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentythree/init
#dungeon fourth
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:123}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentyfour/diff_check
#dungeon twentyseven
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:137}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentyseven/init
#dungeon twentynine
execute as @s[scores={AllLV=5..},nbt={SelectedItem:{tag:{CustomModelData:159}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentynine/init
#dungeon thirtyfive
execute as @s[scores={AllLV=80..},advancements={mikatanserver:customcrafter/rod_and_sword/rare_stone_2=true},nbt={SelectedItem:{tag:{CustomModelData:180}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/thirtyfive/init


## Season2 締め括り
execute as @s[scores={AllLV=150..},nbt={SelectedItem:{tag:{CustomModelData:160}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/_season2/init

##ores world
#return over world
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:4}}},predicate=mikatanserver:oremapdim] in minecraft:overworld run function mikatanserver:item/teleporter/returnoverworld
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:4}}},predicate=mikatanserver:dungeonmapdim] in minecraft:overworld run function mikatanserver:item/teleporter/returnoverworld
#ruby world
execute as @s[scores={luck-Lv=20..,attackS-Lv=20..,attackD-Lv=20..,mana-Lv=20..,speed-Lv=20..,hp-Lv=20..},nbt={SelectedItem:{tag:{CustomModelData:3}}}] run function mikatanserver:item/teleporter/rubymaptp
#sapphire
execute as @s[scores={luck-Lv=30..,attackS-Lv=30..,attackD-Lv=30..,mana-Lv=30..,speed-Lv=30..,hp-Lv=30..},nbt={SelectedItem:{tag:{CustomModelData:5}}}] run function mikatanserver:item/teleporter/sapphiremaptp
#sphene
execute as @s[scores={luck-Lv=45..,attackS-Lv=45..,attackD-Lv=45..,mana-Lv=45..,speed-Lv=45..,hp-Lv=45..},nbt={SelectedItem:{tag:{CustomModelData:6}}}] run function mikatanserver:item/teleporter/sphenemaptp
#peridot
execute as @s[scores={luck-Lv=110..,attackS-Lv=110..,attackD-Lv=110..,mana-Lv=110..,speed-Lv=110..,hp-Lv=110..},nbt={SelectedItem:{tag:{CustomModelData:32}}}] run function mikatanserver:item/teleporter/peridotmaptp
#rhodochrosite
execute as @s[scores={luck-Lv=130..,attackS-Lv=130..,attackD-Lv=130..,mana-Lv=130..,speed-Lv=130..,hp-Lv=130..},nbt={SelectedItem:{tag:{CustomModelData:33}}}] run function mikatanserver:item/teleporter/rhodochrositemaptp
#charoite
execute as @s[scores={luck-Lv=65..,attackS-Lv=65..,attackD-Lv=65..,mana-Lv=65..,speed-Lv=65..,hp-Lv=65..},nbt={SelectedItem:{tag:{CustomModelData:15}}}] run function mikatanserver:item/teleporter/charoitemaptp
#sunstone
execute as @s[scores={luck-Lv=80..,attackS-Lv=80..,attackD-Lv=80..,mana-Lv=80..,speed-Lv=80..,hp-Lv=80..},nbt={SelectedItem:{tag:{CustomModelData:16}}}] run function mikatanserver:item/teleporter/sunstonemaptp
#dungeon eigth
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:38}}}] run function mikatanserver:item/teleporter/_event_christmas
#aquamarine
execute as @s[scores={luck-Lv=165..,attackS-Lv=165..,attackD-Lv=165..,mana-Lv=165..,speed-Lv=165..,hp-Lv=165..},nbt={SelectedItem:{tag:{CustomModelData:70}}}] run function mikatanserver:item/teleporter/aquamarinemaptp
#aquamarine
execute as @s[scores={luck-Lv=185..,attackS-Lv=185..,attackD-Lv=185..,mana-Lv=185..,speed-Lv=185..,hp-Lv=185..},nbt={SelectedItem:{tag:{CustomModelData:71}}}] run function mikatanserver:item/teleporter/jademaptp
#hematite
execute as @s[scores={luck-Lv=210..,attackS-Lv=210..,attackD-Lv=210..,mana-Lv=210..,speed-Lv=210..,hp-Lv=210..},nbt={SelectedItem:{tag:{CustomModelData:72}}}] run function mikatanserver:item/teleporter/hematitemaptp
#クリスマス 2022
execute as @s[scores={RewardPoint=400..},nbt={SelectedItem:{tag:{CustomModelData:83}}}] run function mikatanserver:item/teleporter/_event_christmas_2022
#masic_wind
execute as @s[scores={luck-Lv=120..,attackS-Lv=120..,attackD-Lv=120..,mana-Lv=120..,speed-Lv=120..,hp-Lv=120..},nbt={SelectedItem:{tag:{CustomModelData:89}}}] run function mikatanserver:item/teleporter/masic_win
#masic_light
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:112}}}] run function mikatanserver:item/teleporter/masic_light
#tanzanite
execute as @s[scores={luck-Lv=235..,attackS-Lv=235..,attackD-Lv=235..,mana-Lv=235..,speed-Lv=235..,hp-Lv=235..},nbt={SelectedItem:{tag:{CustomModelData:94}}}] run function mikatanserver:item/teleporter/tanzanitemaptp
#citrin
execute as @s[scores={luck-Lv=260..,attackS-Lv=260..,attackD-Lv=260..,mana-Lv=260..,speed-Lv=260..,hp-Lv=260..},nbt={SelectedItem:{tag:{CustomModelData:95}}}] run function mikatanserver:item/teleporter/citrinmaptp
#moon_stone
execute as @s[scores={luck-Lv=285..,attackS-Lv=285..,attackD-Lv=285..,mana-Lv=285..,speed-Lv=285..,hp-Lv=285..},nbt={SelectedItem:{tag:{CustomModelData:96}}}] run function mikatanserver:item/teleporter/moonstonemaptp
#masic_dark
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:113}}}] run function mikatanserver:item/teleporter/masic_dark
#masic_fire2
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:114}}}] run function mikatanserver:item/teleporter/masic_fire2

##area
#christmas event
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:40}}}] run function mikatanserver:item/teleporter/area/_event_christmas
#ender
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:62}}}] run function mikatanserver:item/teleporter/area/ender
#nether
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:74}}}] run function mikatanserver:item/teleporter/area/nether
#island
execute as @s[scores={RewardPoint=2300..},nbt={SelectedItem:{tag:{CustomModelData:80}}}] run function mikatanserver:item/teleporter/area/island
#halloween
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:81}}}] run function mikatanserver:item/teleporter/area/halloween
#ruins
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:84}}}] run function mikatanserver:item/teleporter/area/ruins
#farm
execute as @s[scores={RewardPoint=4000..},nbt={SelectedItem:{tag:{CustomModelData:90}}}] run function mikatanserver:item/teleporter/area/farm
#new_year 2023
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:92}}},advancements={mikatanserver:customcrafter/add_stone/egg=true}] run function mikatanserver:item/teleporter/area/newyear_2023
#jungle
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:100}}},scores={AllLV=145..}] run function mikatanserver:item/teleporter/area/jungle
#cherry
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:115}}}] run function mikatanserver:item/teleporter/area/cherryblossom
#cave
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:116}}}] run function mikatanserver:item/teleporter/area/cave
#nether tier2
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:117}}},scores={QUEST_NETHER_LEVEL=50..}] run function mikatanserver:item/teleporter/area/nether_tier2
#ender tier2
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:128}}},scores={QUEST_ENDER_LEVEL=50..}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/area/ender_tier2
#volcano
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:129}}}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/area/volcano
#desert
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:130}}},advancements={mikatanserver:customcrafter/rod_and_sword/rare_stone_2=true,mikatanserver:customcrafter/rod_and_sword/devil_rod_2=true}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/area/desert


##slime raid
    #ボスがいないなら召喚可能
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:109}}}] at @s if predicate mikatanserver:overworld unless score $slime RAID_Flag matches 1 run function mikatanserver:adddim/raid/slime/call
    #ボスがいるなら参加可能
    execute as @s[nbt={SelectedItem:{tag:{CustomModelData:110}}}] at @s if predicate mikatanserver:overworld if score $slime RAID_Flag matches 1 run function mikatanserver:adddim/raid/slime/participation


#masic_ice
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:103}}}] run function mikatanserver:item/teleporter/masic_ice


##XPboost
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:46}}}] at @s run function mikatanserver:item/boost/atkd/1
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:48}}}] at @s run function mikatanserver:item/boost/luck/9


##xp配布
execute as @s[nbt={SelectedItem:{tag:{GiveXp:"return"}}}] run function mikatanserver:item/givexp/return
execute as @s[nbt={SelectedItem:{tag:{GiveXp:2000}}}] run function mikatanserver:item/givexp/2000
execute as @s[nbt={SelectedItem:{tag:{GiveXp:1000}}}] run function mikatanserver:item/givexp/1000
execute as @s[nbt={SelectedItem:{tag:{GiveXp:100}}}] run function mikatanserver:item/givexp/100
execute as @s[nbt={SelectedItem:{tag:{GiveXp:30}}}] run function mikatanserver:item/givexp/30
execute as @s[nbt={SelectedItem:{tag:{GiveXp:5}}}] run function mikatanserver:item/givexp/5
execute as @s[nbt={SelectedItem:{tag:{GiveXp:1}}}] run function mikatanserver:item/givexp/1
execute as @s[nbt={SelectedItem:{tag:{GiveMana:100}}},scores={mana-Lv=..99}] run function mikatanserver:item/givexp/mana/100


execute as @s[nbt={SelectedItem:{tag:{CustomModelData:91}}}] at @s unless data entity @s SelectedItem.tag.num run function mikatanserver:item/system/change_view_xp/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:91}}}] at @s if data entity @s SelectedItem.tag.num run function mikatanserver:item/system/change_view_xp/mini

#reward 称号 ice
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:41}}}] at @s run function mikatanserver:item/reward/ice
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:60}}}] at @s run function mikatanserver:item/reward/orange

##追加アイテム等入手条件解放処理
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:50}}}] at @s run function mikatanserver:item/add_stone/angel/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:51}}}] at @s run function mikatanserver:item/add_stone/forest/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:55}}}] at @s run function mikatanserver:item/add_stone/spirit/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:56}}}] at @s run function mikatanserver:item/add_stone/farming/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:58}}}] at @s run function mikatanserver:item/add_stone/imagination/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:61}}}] at @s run function mikatanserver:item/add_stone/luck/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:67}}}] at @s run function mikatanserver:item/add_stone/ender/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:79}}}] at @s run function mikatanserver:item/add_stone/egg/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:88}}}] at @s run function mikatanserver:item/add_stone/goddess/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:106}}}] at @s run function mikatanserver:item/add_stone/gravity/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:121}}}] at @s run function mikatanserver:item/add_stone/ruins/main
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:131}}}] at @s run function mikatanserver:item/add_stone/maiden/main




