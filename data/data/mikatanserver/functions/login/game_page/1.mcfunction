tellraw @s [{"text": "====================================================","color":"gold"}]


scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customcrafter/tablecraft=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを5まで上げ、作業台に額縁を置き、ネザライトブロックを置いてcrafter++を作成する/またenchanted item(レシピ上の光っているアイテム)は同じアイテムを9スタック並べる、又は特定の村人と交易できることを理解する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/twentynine=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを5まで上げ、白銀の従者と刃に挑み、レベリングダンジョンのシステムを理解する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:event/ender/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/nether/tp=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを10まで上げ、エリア:Ender/Netherに向かい、システムを理解する。\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customcrafter/oremaptp_event_christmas=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを15程度まで上げ、採掘場：Christmas 2021エリアに向かい、モミの木(原木)、モミの葉(葉をシルクタッチ)、ice crystal(氷をシルクタッチ)が採掘できることを理解する。\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/ruby=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを20まで上げ、Ruby採石場へと足を運ぶ\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/first=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを20まで上げ、始まりのダンジョンに挑み、ダンジョンのシステムを理解する。\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/sphene=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/accessories/pendant/obsidian=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/accessories/pendant/white_silver=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 3 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 3","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを45まで上げ、Sphene採石場へと足を運ぶ/obsidian pendantを作成する/white silver pendantを作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/nineth=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:tp/dungeon/eleventh=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:tp/dungeon/tenth=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 3 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 3","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを50程度まで上げ、ダンジョン:軌跡の剣舞/その先に見えたもの/波動に挑む\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customcrafter/add_stone/angel=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/add_stone/forest=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを50程度まで上げ、symbol:forest/angelを作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customcrafter/manacharger=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/manacharger_2=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/rod_and_sword/rare_stone=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 3 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 3","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを50程度まで上げ、mana charger/origin of mana/翠杖を作成する\n","color":"yellow"}]

tellraw @s [{"text":"次のページへ","hoverEvent": {"action":"show_text","contents":{"text":"クリックしてLv50-100を表示する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2"},"color":"gold"}]
function mikatanserver:login/game_page/press_page

tellraw @s [{"text": "====================================================","color":"gold"}]