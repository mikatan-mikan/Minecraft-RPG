##CustomModelData使用済みメモ
#carrot_on_a_stick                          ~24

##ROD
#teleportROD mana:75
execute as @s[scores={ROD=1..,mana=75..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}},predicate=mikatanserver:overworld] at @s if block ^ ^ ^8 air run function mikatanserver:item/rod/aote
#speedBuffer mana:10
execute as @s[scores={ROD=1..,mana=10..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}}] run function mikatanserver:item/rod/speedbuffer
#lightningROD mana:25
execute as @s[scores={ROD=1..,mana=25..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9}}}] at @s run function mikatanserver:item/rod/lightningrod/main
#windROD mana:35
execute as @s[scores={ROD=1..,mana=35..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:12}}}] at @s run function mikatanserver:item/rod/windrod/main
#frozenROD mana:40
execute as @s[scores={ROD=1..,mana=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:17}}}] at @s run function mikatanserver:item/rod/frozenrod/main
#tact mana:30
execute as @s[scores={ROD=1..,mana=30..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:23}}}] at @s run function mikatanserver:item/rod/tact/one/main
#fireball mana:27
execute as @s[scores={ROD=1..,mana=27..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:24}}}] at @s run function mikatanserver:item/rod/fireball/main
#fireball mana:55
execute as @s[scores={ROD=1..,mana=55..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:25}}}] at @s run function mikatanserver:item/rod/enderrod/main
#villager tp mana:15
execute as @s[scores={ROD=1..,mana=15..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:27}}}] at @s run function mikatanserver:item/rod/villagertp/main
#summon zombie mana:20
execute as @s[scores={ROD=1..,mana=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:28}},Inventory:[{id:"minecraft:diamond_block"}]}] at @s run function mikatanserver:item/rod/summonzombie/main
#healingrod mana:30
execute as @s[scores={ROD=1..,mana=30..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:34}}}] at @s run function mikatanserver:item/rod/healing/main
#just guard mana:5
execute as @s[scores={ROD=1..,mana=5..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:35}}}] at @s run function mikatanserver:item/rod/justguard/main
#chaos rod mana:50
execute as @s[scores={ROD=1..,mana=50..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:36}}}] at @s run function mikatanserver:item/rod/chaos/main
#burt rod mana:35
execute as @s[scores={ROD=1..,mana=35..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:39}}}] at @s run function mikatanserver:item/rod/burt/main
#megiddo rod mana:45
execute as @s[scores={ROD=1..,mana=45..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:44}}}] at @s run function mikatanserver:item/rod/megiddo/main
#impact rod mana:50
execute as @s[scores={ROD=1..,mana=50..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:47}}}] at @s run function mikatanserver:item/rod/impact/main
#spirit rod:mana45
execute as @s[scores={ROD=1..,mana=45..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:65}}}] at @s run function mikatanserver:item/rod/spirit/main

#想剣
execute as @s[scores={ROD=1..,mana=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:20}}}] at @s run function mikatanserver:item/rod/memory_sword/main
#飛剣
execute as @s[scores={ROD=1..,mana=25..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:21}}}] at @s run function mikatanserver:item/rod/flying_sword/main
#星剣
execute as @s[scores={ROD=1..,mana=15..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:22}}}] at @s run function mikatanserver:item/rod/comet_sword/main
#蜘蛛剣
execute as @s[scores={ROD=1..,mana=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:26}}}] at @s run function mikatanserver:item/rod/reaping/main
execute as @s[scores={ROD=1..,mana=40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:43}}}] at @s run function mikatanserver:item/rod/reaping/2_high/check
#mana charger
execute as @s[scores={manachargercount=20..,ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:31}}}] run function mikatanserver:item/rod/manacharger/main
#投剣:45
execute as @s[scores={ROD=1..,mana=45..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:37}}}] at @s run function mikatanserver:item/rod/through/main
#luck rod
execute as @s[scores={ROD=1..,mana=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:63}}}] at @s run function mikatanserver:item/rod/luck/main
#rare stone wand mana:0 -> 追加効果で変動
execute as @s[scores={ROD=1..,jadewandcount = 200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:52}}}] at @s run function mikatanserver:item/rod/rare_stone_wand/main
#spirit wand mana:100
execute as @s[scores={ROD=1..,mana = 100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:54}}}] at @s run function mikatanserver:item/rod/spirit_wand/main
#rare stone wand mana:0 -> 追加効果で変動
execute as @s[scores={ROD=1..,jadewandcount = 200..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:59}}}] at @s run function mikatanserver:item/rod/rare_stone_wand_2/main
# aspect of the dragon
execute as @s[scores={ROD=1..,mana = 100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:64}}}] at @s run function mikatanserver:item/rod/aspect_of_the_dragon/main
#ember
execute as @s[scores={ROD=1..,mana = 40..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:69}}}] at @s run function mikatanserver:item/rod/ember/main
#pointer
execute as @s[scores={ROD=1..,mana = 50..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:73}}}] at @s run function mikatanserver:item/rod/pointer/main
#crystal
execute as @s[scores={ROD=1..,mana = 100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:75}}}] at @s run function mikatanserver:item/rod/crystal/main
# aspect of the end
execute as @s[scores={ROD=1..,mana = 50..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:76}}}] at @s run function mikatanserver:item/rod/aspect_of_the_end/main
#投剣:45
execute as @s[scores={ROD=1..,mana=45..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:78}}}] at @s run function mikatanserver:item/rod/through_2/main
#pumpkin:30
execute as @s[scores={ROD=1..,mana=30..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:82,pumpkin_rod:true}}}] at @s run function mikatanserver:item/rod/pumpkin/main


#純真エンチャント
execute as @s[scores={ROD=1..,mana=70..},nbt={SelectedItem:{tag:{inocent:[1]}}}] at @s run function mikatanserver:item/rod/inocent_ench/main
#純真エンチャント
execute as @s[scores={ROD=1..,mana=70..},nbt={SelectedItem:{tag:{inocent:[2]}}}] at @s run function mikatanserver:item/rod/inocent_ench/main_2


##tp item
execute as @s[scores={ROD=1..,mana=5..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7}}},predicate=mikatanserver:overworld] at @s if block ~ ~3 ~ air run function mikatanserver:item/rod/plusteleporter
execute as @s[scores={ROD=1..,mana=5..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:8}}},predicate=mikatanserver:overworld] at @s if block ~ ~-3 ~ air run function mikatanserver:item/rod/minusteleporter



##teleporter
#return over world
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},predicate=mikatanserver:oremapdim] in minecraft:overworld run function mikatanserver:item/teleporter/returnoverworld
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:4}}},predicate=mikatanserver:dungeonmapdim] in minecraft:overworld run function mikatanserver:item/teleporter/returnoverworld
#ruby world
execute as @s[scores={ROD=1..,luck-Lv=20..,attackS-Lv=20..,attackD-Lv=20..,mana-Lv=20..,speed-Lv=20..,hp-Lv=20..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3}}}] run function mikatanserver:item/teleporter/rubymaptp
#sapphire
execute as @s[scores={ROD=1..,luck-Lv=30..,attackS-Lv=30..,attackD-Lv=30..,mana-Lv=30..,speed-Lv=30..,hp-Lv=30..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:5}}}] run function mikatanserver:item/teleporter/sapphiremaptp
#sphene
execute as @s[scores={ROD=1..,luck-Lv=45..,attackS-Lv=45..,attackD-Lv=45..,mana-Lv=45..,speed-Lv=45..,hp-Lv=45..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:6}}}] run function mikatanserver:item/teleporter/sphenemaptp
#peridot
execute as @s[scores={ROD=1..,luck-Lv=110..,attackS-Lv=110..,attackD-Lv=110..,mana-Lv=110..,speed-Lv=110..,hp-Lv=110..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:32}}}] run function mikatanserver:item/teleporter/peridotmaptp
#rhodochrosite
execute as @s[scores={ROD=1..,luck-Lv=130..,attackS-Lv=130..,attackD-Lv=130..,mana-Lv=130..,speed-Lv=130..,hp-Lv=130..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:33}}}] run function mikatanserver:item/teleporter/rhodochrositemaptp
#dungeon first
execute as @s[scores={ROD=1..,luck-Lv=10..,attackS-Lv=10..,attackD-Lv=10..,mana-Lv=10..,speed-Lv=10..,hp-Lv=10..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:10}}}] run function mikatanserver:item/teleporter/dungeon/first/init
#dungeon second
execute as @s[scores={ROD=1..,luck-Lv=35..,attackS-Lv=35..,attackD-Lv=35..,mana-Lv=35..,speed-Lv=35..,hp-Lv=35..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:11}}}] run function mikatanserver:item/teleporter/dungeon/second/init
#dungeon third
execute as @s[scores={ROD=1..,luck-Lv=50..,attackS-Lv=50..,attackD-Lv=50..,mana-Lv=50..,speed-Lv=50..,hp-Lv=50..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:13}}}] run function mikatanserver:item/teleporter/dungeon/third/init
#dungeon fourth
execute as @s[scores={ROD=1..,luck-Lv=60..,attackS-Lv=60..,attackD-Lv=60..,mana-Lv=60..,speed-Lv=60..,hp-Lv=60..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:14}}}] run function mikatanserver:item/teleporter/dungeon/fourth/init
#charoite
execute as @s[scores={ROD=1..,luck-Lv=65..,attackS-Lv=65..,attackD-Lv=65..,mana-Lv=65..,speed-Lv=65..,hp-Lv=65..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:15}}}] run function mikatanserver:item/teleporter/charoitemaptp
#sunstone
execute as @s[scores={ROD=1..,luck-Lv=80..,attackS-Lv=80..,attackD-Lv=80..,mana-Lv=80..,speed-Lv=80..,hp-Lv=80..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:16}}}] run function mikatanserver:item/teleporter/sunstonemaptp
#dungeon fifth
execute as @s[scores={ROD=1..,luck-Lv=75..,attackS-Lv=75..,attackD-Lv=75..,mana-Lv=75..,speed-Lv=75..,hp-Lv=75..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:18}}}] run function mikatanserver:item/teleporter/dungeon/fifth/init
#dungeon sixth
execute as @s[scores={ROD=1..,luck-Lv=90..,attackS-Lv=90..,attackD-Lv=90..,mana-Lv=90..,speed-Lv=90..,hp-Lv=90..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:19}}}] run function mikatanserver:item/teleporter/dungeon/sixth/init
#dungeon sevth
execute as @s[scores={ROD=1..,luck-Lv=120..,attackS-Lv=120..,attackD-Lv=120..,mana-Lv=120..,speed-Lv=120..,hp-Lv=120..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:29}}}] run function mikatanserver:item/teleporter/dungeon/sevth/init
#dungeon eigth
execute as @s[scores={ROD=1..,luck-Lv=140..,attackS-Lv=140..,attackD-Lv=140..,mana-Lv=140..,speed-Lv=140..,hp-Lv=140..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:30}}}] run function mikatanserver:item/teleporter/dungeon/eigth/init
#dungeon eigth
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:38}}}] run function mikatanserver:item/teleporter/_event_christmas
#christmas event
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:40}}}] run function mikatanserver:item/teleporter/area/_event_christmas
#dungeon eigth
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:42}}}] run function mikatanserver:item/teleporter/dungeon/nineth/init
#dungeon tenth
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:45}}}] run function mikatanserver:item/teleporter/dungeon/tenth/init
#dungeon eleventh
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:49}}}] run function mikatanserver:item/teleporter/dungeon/eleventh/init
#dungeon twelveth
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:53}}}] run function mikatanserver:item/teleporter/dungeon/twelveth/init
#dungeon thirteen
execute as @s[scores={ROD=1..,luck-Lv=80..,attackS-Lv=80..,attackD-Lv=80..,mana-Lv=80..,speed-Lv=80..,hp-Lv=80..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:57}}}] run function mikatanserver:item/teleporter/dungeon/thirteen/init
#ender
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:62}}}] run function mikatanserver:item/teleporter/area/ender
#dungeon fourteen
execute as @s[scores={ROD=1..,luck-Lv=95..,attackS-Lv=95..,attackD-Lv=95..,mana-Lv=95..,speed-Lv=95..,hp-Lv=95..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:66}}}] run function mikatanserver:item/teleporter/dungeon/fourteen/init
#dungeon fifteen
execute as @s[scores={ROD=1..,luck-Lv=85..,attackS-Lv=85..,attackD-Lv=85..,mana-Lv=85..,speed-Lv=85..,hp-Lv=85..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:68}}}] run function mikatanserver:item/teleporter/dungeon/fifteen/init
#aquamarine
execute as @s[scores={ROD=1..,luck-Lv=165..,attackS-Lv=165..,attackD-Lv=165..,mana-Lv=165..,speed-Lv=165..,hp-Lv=165..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:70}}}] run function mikatanserver:item/teleporter/aquamarinemaptp
#aquamarine
execute as @s[scores={ROD=1..,luck-Lv=185..,attackS-Lv=185..,attackD-Lv=185..,mana-Lv=185..,speed-Lv=185..,hp-Lv=185..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:71}}}] run function mikatanserver:item/teleporter/jademaptp
#hematite
execute as @s[scores={ROD=1..,luck-Lv=210..,attackS-Lv=210..,attackD-Lv=210..,mana-Lv=210..,speed-Lv=210..,hp-Lv=210..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:72}}}] run function mikatanserver:item/teleporter/hematitemaptp
#nether
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:74}}}] run function mikatanserver:item/teleporter/area/nether
#dungeon fourteen
execute as @s[scores={ROD=1..,luck-Lv=100..,attackS-Lv=100..,attackD-Lv=100..,mana-Lv=100..,speed-Lv=100..,hp-Lv=100..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:77}}}] run function mikatanserver:item/teleporter/dungeon/sixteen/init
#island
execute as @s[scores={ROD=1..,RewardPoint=2300..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:80}}}] run function mikatanserver:item/teleporter/area/island
#halloween
execute as @s[scores={ROD=1..,RewardPoint=2300..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:81}}}] run function mikatanserver:item/teleporter/area/halloween
#クリスマス 2022
execute as @s[scores={ROD=1..,RewardPoint=400..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:83}}}] run function mikatanserver:item/teleporter/_event_christmas_2022


##XPboost
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:46}}}] at @s run function mikatanserver:item/boost/atkd/1
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:48}}}] at @s run function mikatanserver:item/boost/luck/9


##xp配布
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{GiveXp:"return"}}}] run function mikatanserver:item/givexp/return
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{GiveXp:1000}}}] run function mikatanserver:item/givexp/1000
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{GiveXp:100}}}] run function mikatanserver:item/givexp/100
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{GiveXp:30}}}] run function mikatanserver:item/givexp/30
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{GiveXp:1}}}] run function mikatanserver:item/givexp/1

#reward 称号 ice
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:41}}}] at @s run function mikatanserver:item/reward/ice
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:60}}}] at @s run function mikatanserver:item/reward/orange

##追加アイテム等入手条件解放処理
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:50}}}] at @s run function mikatanserver:item/add_stone/angel/main
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:51}}}] at @s run function mikatanserver:item/add_stone/forest/main
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:55}}}] at @s run function mikatanserver:item/add_stone/spirit/main
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:56}}}] at @s run function mikatanserver:item/add_stone/farming/main
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:58}}}] at @s run function mikatanserver:item/add_stone/imagination/main
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:61}}}] at @s run function mikatanserver:item/add_stone/luck/main
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:67}}}] at @s run function mikatanserver:item/add_stone/ender/main
execute as @s[scores={ROD=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:79}}}] at @s run function mikatanserver:item/add_stone/egg/main

##score Reset
scoreboard players set @s ROD 0