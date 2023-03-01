tellraw @s [{"text": "====================================================","color":"gold"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:event/newyear_2023/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/add_stone/egg=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/newyear_2023/coldly=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customspskiller/root=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 4 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 4","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを105程度まで上げ、ダンジョン:その先に出した答えに挑み、eggsymbolを作成/エリア:ice landへ向かう/coldly swordを作成する/special skillerを作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:event/island/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/accessories/batch/mana=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/accessories/batch/mana_2=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 3 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 3","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを105程度まで上げ、実績ポイントを2300程度まで上げる。その後、エリア:islandに向かう/mana batchの作成/mana batch tier2の作成をする\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/peridot=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/accessories/pendant/peridot=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを110程度まで上げる。その後、peridot採石場に向かう/peridot pendantの作成をする\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:event/nether/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/nether/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/ruins/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/island/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/newyear_2023/tp=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 5 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 5","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを110程度まで上げる。その後、エリア:nether/ender/halloween/island/ruins/ice landに訪れる\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customenhancer/tablecraft=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customenhancer/base/fire=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを110程度まで上げる。その後、enhancerを作成し、火属性の属性を付与する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customspskiller/red=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:tp/dungeon/sevth=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを120程度まで上げる。ダンジョン<未来の先に見据えるものは・・・>に挑む/special skill <red>を作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/seventeen=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:tp/dungeon_clear/seventeen=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/manacharger_3=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 3 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 3","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを125程度まで上げる。ダンジョン<その奇跡は軌跡を描いて・・・>に挑む/クリアする/origin of mana tier2を作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/rhodochrosite=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/healingrod=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを130程度まで上げる。採掘場<rhodochrosite>に向かう/healing rodを作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/eightteen=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/add_stone/goddess=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを135程度まで上げる。ダンジョン<\"めがみ\"と\"めがみ\"？>に挑む/goddess symbolを作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/eight=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを140程度まで上げる。ダンジョン<それは訪れることのなかった光の先・・・>に挑む\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:event/jungle/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/jungle/windrod2=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを145程度まで上げる。エリア<jungle>に向かう/hurricane rodを作成する\n","color":"yellow"}]

tellraw @s [{"text":"前のページへ","hoverEvent": {"action":"show_text","contents":{"text":"クリックしてLv50-100を表示する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2"},"color":"gold"}]
function mikatanserver:login/game_page/press_page

tellraw @s [{"text": "====================================================","color":"gold"}]