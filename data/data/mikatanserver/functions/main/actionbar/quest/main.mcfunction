execute if score @s PlayerUI_Skill matches 7 run data merge storage mikatanserver:actionbar {LvStat:'[{"text":"                                                                                ","color":"white"},{"text":"AtkS","color":"gold","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"attackS-Lv"},"color":"gold","bold":true},{"text":"("},{"score":{"name":"@s","objective":"attackSxp"},"color":"gold"},{"text":"/"},{"score":{"name":"@s","objective":"needattackSxp"},"color":"gold"},{"text":")"},{"text": "   "},{"text":"\\uE021","color": "dark_purple","font":"add_fonts"},{"text":"Lv","color": "dark_purple"},{"score":{"name": "@s","objective": "QUEST_ENDER_LEVEL"},"color": "dark_purple"},{"text": "("},{"score":{"name": "@s","objective": "QUEST_ENDER"}},{"text": "/"},{"score":{"name": "$200","objective": "int"}},{"text": ")"},{"text":"                                              ","color":"white"}]'}

execute if score @s PlayerUI_Skill matches 8 run data merge storage mikatanserver:actionbar {LvStat:'[{"text":"                                                                                ","color":"white"},{"text":"AtkS","color":"gold","bold":true},{"text":"Lv"},{"score":{"name":"@s","objective":"attackS-Lv"},"color":"gold","bold":true},{"text":"("},{"score":{"name":"@s","objective":"attackSxp"},"color":"gold"},{"text":"/"},{"score":{"name":"@s","objective":"needattackSxp"},"color":"gold"},{"text":")"},{"text": "   "},{"text":"\\uE034","color": "red","font":"add_fonts"},{"text":"Lv","color": "dark_purple"},{"score":{"name": "@s","objective": "QUEST_NETHER_LEVEL"},"color": "red"},{"text": "("},{"score":{"name": "@s","objective": "QUEST_NETHER"}},{"text": "/"},{"score":{"name": "$200","objective": "int"}},{"text": ")"},{"text":"                                              ","color":"white"}]'}

execute unless score @s MiniUI matches 1 if score @s PlayerUI_Skill matches 1.. run data merge storage mikatanserver:actionbar {BefSpace:'[{"text":"                                                                                ","color":"white"}]',AftSpace:'[{"text":"                                              ","color":"white"}]'}
execute if score @s MiniUI matches 1 if score @s PlayerUI_Skill matches 1.. run data merge storage mikatanserver:actionbar {BefSpace:'[{"text":"                                        ","color":"white"}]',AftSpace:'[{"text":"      ","color":"white"}]'}
execute if score @s MiniUI matches 1 unless score @s PlayerUI_Skill matches 1.. run data merge storage mikatanserver:actionbar {LvStat:'[{"text":"                                                                                ","color":"white"}]'}