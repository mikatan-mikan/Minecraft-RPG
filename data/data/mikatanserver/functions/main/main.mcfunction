execute as @a if score @s PlayerUIMode matches 1 run title @s actionbar [{"text":"","color":"white"},{"text":"HP","color":"light_purple","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"hp-Lv"},"color":"light_purple","bold":true},{"text":"("},{"score":{"name":"@s","objective":"hpxp"},"color":"light_purple"},{"text":"/"},{"score":{"name":"@s","objective":"needhpxp"},"color":"light_purple"},{"text":")"},{"text":"   "},{"text":"AtkD","color":"red","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"attackD-Lv"},"color":"red","bold":true},{"text":"("},{"score":{"name":"@s","objective":"attackDxp"},"color":"red"},{"text":"/"},{"score":{"name":"@s","objective":"needattackDxp"},"color":"red"},{"text":")"},{"text":"   "},{"text":"AtkS","color":"gold","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"attackS-Lv"},"color":"gold","bold":true},{"text":"("},{"score":{"name":"@s","objective":"attackSxp"},"color":"gold"},{"text":"/"},{"score":{"name":"@s","objective":"needattackSxp"},"color":"gold"},{"text":")"},{"text":"   "},{"text":"Luck","color":"green","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"luck-Lv"},"color":"green","bold":true},{"text":"("},{"score":{"name":"@s","objective":"luckxp"},"color":"green"},{"text":"/"},{"score":{"name":"@s","objective":"needluckxp"},"color":"green"},{"text":")"},{"text":"   "},{"text":"Spd","color":"aqua","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"speed-Lv"},"color":"aqua","bold":true},{"text":"("},{"score":{"name":"@s","objective":"speedxp"},"color":"aqua"},{"text":"/"},{"score":{"name":"@s","objective":"needspeedxp"},"color":"aqua"},{"text":")"},{"text":"   "},{"text":"mana","color":"blue","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"mana-Lv"},"color":"blue","bold":true},{"text":"("},{"score":{"name":"@s","objective":"manaxp"},"color":"blue"},{"text":"/"},{"score":{"name":"@s","objective":"needmanaxp"},"color":"blue"},{"text":")     "},{"text": "⚔","color": "gray","bold": true},{"score":{"name": "@s","objective": "DungeonClear_Num"}},{"text": "     "},{"text":"mana","color":"aqua"},{"text":"("},{"score":{"name":"@s","objective":"mana"}},{"text":"/"},{"score":{"name":"@s","objective":"manamax"}},{"text":")"}]
execute as @a unless score @s PlayerUIMode matches 1 run function mikatanserver:main/actionbar/main
execute as @a if score @s PlayerUI_Skill_Timer matches 0.. run function mikatanserver:main/actionbar/remove_timer

gamemode survival @a[predicate=mikatanserver:overworld,gamemode=adventure]
# execute as @a[tag=FieldPlayer,predicate=mikatanserver:overworld] run function mikatanserver:item/teleporter/tag/remove
# execute as @a[tag=new_year2021P,predicate=mikatanserver:overworld] run tag @s remove new_year2021P
# execute as @a[tag=FieldEnder,predicate=mikatanserver:overworld] run tag @s remove FieldEnder
# execute as @a[tag=FieldIsland,predicate=mikatanserver:overworld] run function mikatanserver:main/event/island/tagremove 
# execute as @a[tag=FieldHalloween,predicate=mikatanserver:overworld] run tag @s remove FieldHalloween
# execute as @a[tag=FieldNether,predicate=mikatanserver:overworld] run function mikatanserver:main/event/nether/reset_bossbar
# execute as @a[tag=FieldRuins,predicate=mikatanserver:overworld] run function mikatanserver:main/event/ruins/reset_bossbar
# execute as @a[tag=FieldFarm,predicate=mikatanserver:overworld] run tag @s remove FieldFarm

##放置検知
execute as @a[scores={MoveCheck=1200..}] run function mikatanserver:main/removexp/main
execute as @a[scores={MoveCheck_Lite=100..}] at @s run function mikatanserver:main/removexp/luck

execute positioned 2000 110 -717 as @a[distance=..100,predicate=mikatanserver:overworld] run scoreboard players set @s mobcount 0

execute as @a[scores={darkoakcount=1..},predicate=mikatanserver:oremapdim] run scoreboard players set @s darkoakcount 0

##タイマークリスタル
    #みかん
    execute as @a[scores={MoveCheck=12000..}] run scoreboard players set @s TimerCrystalTime 0
    execute as @a[scores={MoveCheck=..12000}] run scoreboard players add @s TimerCrystalTime 1
    execute as @a[scores={MoveCheck_walk=1..}] run scoreboard players set @s MoveCheck_Lite 0
    execute as @a[scores={MoveCheck_dash=1..}] run scoreboard players set @s MoveCheck_Lite 0
    execute as @a[scores={MoveCheck_walk=1..,MoveCheck_shift=1..}] run function mikatanserver:main/walkreset
    execute as @a[scores={MoveCheck_dush=1..,MoveCheck_shift=1..}] run function mikatanserver:main/walkreset
    execute as @a[scores={TimerCrystalTime=72000..}] run function mikatanserver:main/give_item/orangegive
    #ライム
    execute as @a[scores={limetimer=72000..}] run function mikatanserver:main/give_item/limegive


##初回ログイン検知
execute as @a[scores={firstlogin=..100}] run function mikatanserver:main/setup

##ログイン検知
execute as @a[scores={LogCheck_Logger=1..}] at @s run function mikatanserver:login/loginmessage
execute as @a[scores={LogCheck_Timer=..20}] at @s run function mikatanserver:login/loginmessage

##ダンジョン検知
## execute if entity @a[predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/dungeonmap_one/mainloop

##Tips
execute as @a if score @s DeathCnt_Tip matches 1.. run function mikatanserver:main/tips

##死亡後復帰用
execute as @a[scores={deathflag=1..}] run function mikatanserver:main/deathflag/main 

##鉱石ディメンション検知
#鉱石dimに人がいるかを検知
execute as @a[predicate=mikatanserver:oremapdim] run function mikatanserver:adddim/oremap_one/main

##mana上昇
execute as @a[scores={manatimer=20..}] run execute if score @s manamax > @s mana run function mikatanserver:main/mana/main

##xp変換
#speedxp
execute as @a[predicate=mikatanserver:main/breakstone] run function mikatanserver:main/lvup/xpcount/speed
#atkspeedxp
execute as @a[scores={mobcount=1..}] run function mikatanserver:main/lvup/xpcount/atkspeed
#healthxp
execute as @a[scores={tradecount=1..},predicate=mikatanserver:overworld] run function mikatanserver:main/lvup/xpcount/health
#atkdamagexp
execute as @a[predicate=mikatanserver:main/breakwood] run function mikatanserver:main/lvup/xpcount/atkdamage
#manaxp
execute as @a[scores={enchantcount=1..}] run function mikatanserver:main/lvup/xpcount/mana
#luckxp
execute as @a[scores={fishingcount=1..}] run function mikatanserver:main/lvup/xpcount/luck


##effort material
execute as @a[scores={ObsidianCount=1..}] run function mikatanserver:main/ores/main

##farming xp判定
execute as @a[scores={SmallAmethyst=1..}] run function mikatanserver:main/lvup/xpcount/luck

##boost
execute as @a[scores={Boost = 1..}] run function mikatanserver:main/boostminus

##マナ用スコアリセ
scoreboard players set @a ManaBatchBool 0