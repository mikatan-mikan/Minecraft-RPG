




execute unless score @s PlayerUI_Skill matches 1.. run data merge storage mikatanserver:actionbar {LvStat:'[{"text":"                                                                                                                                                                              ","color":"white"}]'}

execute if score @s PlayerUI_Skill matches 1 run data merge storage mikatanserver:actionbar {LvStat:'[{"text":""},{"text":"HP","color":"light_purple","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"hp-Lv"},"color":"light_purple","bold":true},{"text":"("},{"score":{"name":"@s","objective":"hpxp"},"color":"light_purple"},{"text":"/"},{"score":{"name":"@s","objective":"needhpxp"},"color":"light_purple"},{"text":")"}]'}

execute if score @s PlayerUI_Skill matches 2 run data merge storage mikatanserver:actionbar {LvStat:'[{"text":""},{"text":"AtkD","color":"red","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"attackD-Lv"},"color":"red","bold":true},{"text":"("},{"score":{"name":"@s","objective":"attackDxp"},"color":"red"},{"text":"/"},{"score":{"name":"@s","objective":"needattackDxp"},"color":"red"},{"text":")"}]'}

execute if score @s PlayerUI_Skill matches 3 run data merge storage mikatanserver:actionbar {LvStat:'[{"text":""},{"text":"AtkS","color":"gold","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"attackS-Lv"},"color":"gold","bold":true},{"text":"("},{"score":{"name":"@s","objective":"attackSxp"},"color":"gold"},{"text":"/"},{"score":{"name":"@s","objective":"needattackSxp"},"color":"gold"},{"text":")"}]'}

execute if score @s PlayerUI_Skill matches 4 run data merge storage mikatanserver:actionbar {LvStat:'[{"text":""},{"text":"Luck","color":"green","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"luck-Lv"},"color":"green","bold":true},{"text":"("},{"score":{"name":"@s","objective":"luckxp"},"color":"green"},{"text":"/"},{"score":{"name":"@s","objective":"needluckxp"},"color":"green"},{"text":")"}]'}

execute if score @s PlayerUI_Skill matches 5 run data merge storage mikatanserver:actionbar {LvStat:'[{"text":""},{"text":"Spd","color":"aqua","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"speed-Lv"},"color":"aqua","bold":true},{"text":"("},{"score":{"name":"@s","objective":"speedxp"},"color":"aqua"},{"text":"/"},{"score":{"name":"@s","objective":"needspeedxp"},"color":"aqua"},{"text":")"}]'}

execute if score @s PlayerUI_Skill matches 6 run data merge storage mikatanserver:actionbar {LvStat:'[{"text":""},{"text":"mana","color":"blue","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"mana-Lv"},"color":"blue","bold":true},{"text":"("},{"score":{"name":"@s","objective":"manaxp"},"color":"blue"},{"text":"/"},{"score":{"name":"@s","objective":"needmanaxp"},"color":"blue"},{"text":")"}]'}

##共通部分(mana / dungeon score / hitcnt)
data merge storage mikatanserver:actionbar {Base:'[{"text":""},{"text": "⚔","color": "gray","bold": true},{"score":{"name": "@s","objective": "DungeonClear_Num"}}]'}

##mana
execute if score @s mana matches 100.. run data merge storage mikatanserver:actionbar {Mana:'[{"text": "     "},{"text":"\\uE027","font":"add_fonts","color":"aqua"},{"text":"\\uF828","font":"add_fonts"},{"score":{"name":"@s","objective":"mana"},"font":"mana"},{"text":"/"},{"score":{"name":"@s","objective":"manamax"},"font":"mana"}]'}
execute if score @s mana matches 10..99 run data merge storage mikatanserver:actionbar {Mana:'[{"text": "     "},{"text":"\\uE027","font":"add_fonts","color":"aqua"},{"text":"\\uF829","font":"add_fonts"},{"score":{"name":"@s","objective":"mana"},"font":"mana"},{"text":"/"},{"score":{"name":"@s","objective":"manamax"},"font":"mana"}]'}
execute if score @s mana matches ..9 run data merge storage mikatanserver:actionbar {Mana:'[{"text": "     "},{"text":"\\uE027","font":"add_fonts","color":"aqua"},{"text":"\\uF828\\uF829","font":"add_fonts"},{"score":{"name":"@s","objective":"mana"},"font":"mana"},{"text":"/"},{"score":{"name":"@s","objective":"manamax"},"font":"mana"}]'}

##unspace
data merge storage mikatanserver:actionbar {UnSpace1:'[{"text":"\\uF80B\\uF80B","font":"add_fonts"}]'}

##health
execute store result score @s PlayerHealth10 run data get entity @s Health 10
    #hp割合を計算
    scoreboard players operation $now_hp PlayerHealth10 = @s PlayerHealth10
    scoreboard players operation $max_hp PlayerHealth10 = @s PlayerHealth10Max
    scoreboard players operation $now_hp PlayerHealth10 *= $100 int
    scoreboard players operation $now_hp PlayerHealth10 /= $max_hp PlayerHealth10
execute if score $now_hp PlayerHealth10 matches 51.. run function mikatanserver:main/actionbar/health_tree/51_100
execute if score $now_hp PlayerHealth10 matches ..50 run function mikatanserver:main/actionbar/health_tree/0_50
# execute if score $now_hp PlayerHealth10 matches 60.. run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"green"}]'}
# execute if score $now_hp PlayerHealth10 matches 20..59 run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"yellow"}]'}
# execute if score $now_hp PlayerHealth10 matches ..19 run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"red"}]'}

execute if score @s PlayerHealth10 matches 100.. run data merge storage mikatanserver:actionbar {Health:'[{"text":""},{"text":"\\uE022","font":"hitcnt"},{"text":"\\uF828","font":"add_fonts"}]'}
execute if score @s PlayerHealth10 matches 10..99 run data merge storage mikatanserver:actionbar {Health:'[{"text":""},{"text":"\\uE022","font":"hitcnt"},{"text":"\\uF829","font":"add_fonts"}]'}
execute if score @s PlayerHealth10 matches ..9 run data merge storage mikatanserver:actionbar {Health:'[{"text":""},{"text":"\\uE022","font":"hitcnt"},{"text":"\\uF828\\uF829","font":"add_fonts"}]'}


##special skill
execute if score @s SpecialSkill matches 100.. run data merge storage mikatanserver:actionbar {HitCnt:'[{"text":"\\uF829","font":"add_fonts"},{"text":"\\uE026","font":"add_fonts","color":"yellow","font":"hitcnt"},{"text":"\\uF828","font":"add_fonts"},{"score":{"name":"@s","objective":"SpecialSkill"},"font":"hitcnt"},{"text":"/","font":"hitcnt"},{"score":{"name":"@s","objective":"SpecialSkillMax"},"font":"hitcnt"}]'}
execute if score @s SpecialSkill matches 10..99 run data merge storage mikatanserver:actionbar {HitCnt:'[{"text":"\\uF829","font":"add_fonts"},{"text":"\\uE026","font":"add_fonts","color":"yellow","font":"hitcnt"},{"text":"\\uF829","font":"add_fonts"},{"score":{"name":"@s","objective":"SpecialSkill"},"font":"hitcnt"},{"text":"/","font":"hitcnt"},{"score":{"name":"@s","objective":"SpecialSkillMax"},"font":"hitcnt"}]'}
execute if score @s SpecialSkill matches ..9 run data merge storage mikatanserver:actionbar {HitCnt:'[{"text":"\\uF829","font":"add_fonts"},{"text":"\\uE026","font":"add_fonts","color":"yellow","font":"hitcnt"},{"text":"\\uF828\\uF829","font":"add_fonts"},{"score":{"name":"@s","objective":"SpecialSkill"},"font":"hitcnt"},{"text":"/","font":"hitcnt"},{"score":{"name":"@s","objective":"SpecialSkillMax"},"font":"hitcnt"}]'}

##uiサイズに応じてspaceを変更
execute unless score @s MiniUI matches 1 if score @s PlayerUI_Skill matches 1.. run data merge storage mikatanserver:actionbar {BefSpace:'[{"text":"                                                                                          ","color":"white"}]',AftSpace:'[{"text":"                                                          ","color":"white"}]'}
execute if score @s MiniUI matches 1 if score @s PlayerUI_Skill matches 1.. run data merge storage mikatanserver:actionbar {BefSpace:'[{"text":"                                                  ","color":"white"}]',AftSpace:'[{"text":"                  ","color":"white"}]'}
execute if score @s MiniUI matches 1 unless score @s PlayerUI_Skill matches 1.. run data merge storage mikatanserver:actionbar {LvStat:'[{"text":"                                                                                              ","color":"white"}]'}


execute if score @s PlayerUI_Skill matches 7.. run function mikatanserver:main/actionbar/quest/main


title @s actionbar [{"nbt":"BefSpace","storage": "mikatanserver:actionbar","interpret": true},{"nbt":"LvStat","storage": "mikatanserver:actionbar","interpret": true},{"nbt":"AftSpace","storage": "mikatanserver:actionbar","interpret": true},{"nbt":"Base","storage": "mikatanserver:actionbar","interpret": true},{"nbt":"Mana","storage": "mikatanserver:actionbar","interpret": true},{"nbt":"UnSpace1","storage": "mikatanserver:actionbar","interpret": true},{"nbt":"Health","storage": "mikatanserver:actionbar","interpret": true},{"nbt":"HMain","storage": "mikatanserver:actionbar","interpret": true},{"nbt":"HitCnt","storage": "mikatanserver:actionbar","interpret": true}]

##次に参照しない場合があるものを解放しておく
data remove storage mikatanserver:actionbar BefSpace
data remove storage mikatanserver:actionbar AftSpace