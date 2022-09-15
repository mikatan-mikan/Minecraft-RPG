execute as @a run title @s actionbar [{"text":"                   ","color":"white"},{"text":"HP","color":"light_purple","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"hp-Lv"},"color":"light_purple","bold":true},{"text":"("},{"score":{"name":"@s","objective":"hpxp"},"color":"light_purple"},{"text":"/"},{"score":{"name":"@s","objective":"needhpxp"},"color":"light_purple"},{"text":")"},{"text":"   "},{"text":"AtkD","color":"red","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"attackD-Lv"},"color":"red","bold":true},{"text":"("},{"score":{"name":"@s","objective":"attackDxp"},"color":"red"},{"text":"/"},{"score":{"name":"@s","objective":"needattackDxp"},"color":"red"},{"text":")"},{"text":"   "},{"text":"AtkS","color":"gold","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"attackS-Lv"},"color":"gold","bold":true},{"text":"("},{"score":{"name":"@s","objective":"attackSxp"},"color":"gold"},{"text":"/"},{"score":{"name":"@s","objective":"needattackSxp"},"color":"gold"},{"text":")"},{"text":"   "},{"text":"Luck","color":"green","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"luck-Lv"},"color":"green","bold":true},{"text":"("},{"score":{"name":"@s","objective":"luckxp"},"color":"green"},{"text":"/"},{"score":{"name":"@s","objective":"needluckxp"},"color":"green"},{"text":")"},{"text":"   "},{"text":"Spd","color":"aqua","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"speed-Lv"},"color":"aqua","bold":true},{"text":"("},{"score":{"name":"@s","objective":"speedxp"},"color":"aqua"},{"text":"/"},{"score":{"name":"@s","objective":"needspeedxp"},"color":"aqua"},{"text":")"},{"text":"   "},{"text":"mana","color":"blue","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"mana-Lv"},"color":"blue","bold":true},{"text":"("},{"score":{"name":"@s","objective":"manaxp"},"color":"blue"},{"text":"/"},{"score":{"name":"@s","objective":"needmanaxp"},"color":"blue"},{"text":")     "},{"text": "⚔","color": "gray","bold": true},{"score":{"name": "@s","objective": "DungeonClear_Num"}},{"text": "     "},{"text":"mana","color":"aqua"},{"text":"("},{"score":{"name":"@s","objective":"mana"}},{"text":"/"},{"score":{"name":"@s","objective":"manamax"}},{"text":")"}]

gamemode survival @a[predicate=mikatanserver:overworld,gamemode=adventure]
execute as @a[tag=new_year2021P,predicate=mikatanserver:overworld] run tag @s remove new_year2021P
execute as @a[tag=FieldEnder,predicate=mikatanserver:overworld] run tag @s remove FieldEnder
execute as @a[tag=FieldIsland,predicate=mikatanserver:overworld] run function mikatanserver:main/event/island/tagremove 
execute as @a[tag=FieldHalloween,predicate=mikatanserver:overworld] run tag @s remove FieldHalloween
execute as @a[tag=FieldNether,predicate=mikatanserver:overworld] run function mikatanserver:main/event/nether/reset_bossbar
execute as @a[tag=FieldRuins,predicate=mikatanserver:overworld] run function mikatanserver:main/event/ruins/reset_bossbar

##放置検知
execute as @a[scores={MoveCheck=1200..}] run function mikatanserver:main/removexp

execute positioned 2000 110 -717 as @a[distance=..100,predicate=mikatanserver:overworld] run scoreboard players set @s mobcount 0

execute as @a[scores={darkoakcount=1..},predicate=mikatanserver:oremapdim] run scoreboard players set @s darkoakcount 0

##タイマークリスタル
    #みかん
    execute as @a[scores={MoveCheck=12000..}] run scoreboard players set @s TimerCrystalTime 0
    execute as @a[scores={MoveCheck=..12000}] run scoreboard players add @s TimerCrystalTime 1
    execute as @a[scores={MoveCheck_walk=1..,MoveCheck_shift=1..}] run function mikatanserver:main/walkreset
    execute as @a[scores={MoveCheck_dush=1..,MoveCheck_shift=1..}] run function mikatanserver:main/walkreset
    execute as @a[scores={TimerCrystalTime=72000..}] run function mikatanserver:main/orangegive
    #ライム
    execute as @a[scores={limetimer=72000..}] run function mikatanserver:main/limegive


##初回ログイン検知
execute as @a[scores={firstlogin=..100}] run function mikatanserver:main/setup

##ログイン検知
execute as @a[scores={LogCheck_Logger=1..}] at @s run function mikatanserver:login/loginmessage

##ダンジョン検知
execute if entity @a[predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/dungeonmap_one/mainloop

##Tips
execute as @a if score @s DeathCnt_Tip matches 1.. run function mikatanserver:main/tips

##死亡後復帰用
execute as @a[scores={deathflag=1..,deathafter=10..}] run function mikatanserver:main/deathflag
execute as @a[scores={deathflag=1..}] run scoreboard players add @s deathafter 1

##鉱石ディメンション検知
#鉱石dimに人がいるかを検知
execute as @a[predicate=mikatanserver:oremapdim] run function mikatanserver:adddim/oremap_one/main

##mana上昇
execute as @a[scores={manatimer=20..}] run execute if score @s manamax > @s mana run function mikatanserver:main/mana/main
##xp変換
#speedxp
execute as @a[scores={stonecount=1..}] run function mikatanserver:main/lvup/xpcount/speed
execute as @a[scores={cobblestonecount=1..}] run function mikatanserver:main/lvup/xpcount/speed
execute as @a[scores={deepslatecount=1..}] run function mikatanserver:main/lvup/xpcount/speed
execute as @a[scores={NRtonecount=2..}] run function mikatanserver:main/lvup/xpcount/speed
execute as @a[scores={EStonecount=1..}] run function mikatanserver:main/lvup/xpcount/speed
execute as @a[scores={AndesiteCount=1..}] run function mikatanserver:main/lvup/xpcount/speed
execute as @a[scores={DioriteCount=1..}] run function mikatanserver:main/lvup/xpcount/speed
execute as @a[scores={GraniteCount=1..}] run function mikatanserver:main/lvup/xpcount/speed
execute as @a[scores={ObsidianCount=1..}] run function mikatanserver:main/lvup/xpcount/speed

#atkspeedxp
execute as @a[scores={mobcount=1..}] run function mikatanserver:main/lvup/xpcount/atkspeed
#healthxp
execute as @a[scores={tradecount=1..}] run function mikatanserver:main/lvup/xpcount/health
#atkdamagexp
execute as @a[scores={oakcount=1..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={acaciacount=1..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={junglecount=1..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={sprucecount=1..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={birchcount=1..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={darkoakcount=1..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={cristoncount=1..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={warpedcount=1..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={DirtCount=10..}] run function mikatanserver:main/lvup/xpcount/atkdamage
execute as @a[scores={GrassCount=10..}] run function mikatanserver:main/lvup/xpcount/atkdamage
#manaxp
execute as @a[scores={enchantcount=1..}] run function mikatanserver:main/lvup/xpcount/mana
#luckxp
execute as @a[scores={fishingcount=1..}] run function mikatanserver:main/lvup/xpcount/luck


##effort material
execute as @a[scores={ObsidianCount=1..}] run function mikatanserver:main/ores/main

##farming xp判定
execute as @a[scores={FarmingLuckPT=..9,SmallAmethyst=1..}] run function mikatanserver:main/lvup/xpcount/luck

##boost
execute as @a[scores={Boost = 0..}] run function mikatanserver:main/boostminus 

clear @a bow{Enchantments:[{id:"minecraft:power",lvl:15s}]}

clear @a[name="RoRota_",predicate=mikatanserver:overworld] carrot_on_a_stick{CustomModelData:4}

#リセ
scoreboard players set @a ManaBatchBool 0