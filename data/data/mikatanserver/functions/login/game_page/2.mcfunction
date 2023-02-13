tellraw @s [{"text": "====================================================","color":"gold"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/ruby=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:tp/sapphire=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:tp/sphene=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:tp/charoite=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:tp/sunstone=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 5 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 5","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを80程度まで上げ、ruby/sapphire/sphene/charoite/sunstone採掘場へと向かう\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/thirteen=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/add_stone/imagination=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを80程度まで上げ、ダンジョン:その頂点に顕すのはに挑み、symbol:imaginationを作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customcrafter/rod_and_sword/rare_stone_2=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを80程度まで上げ、翠創杖を作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/fifteen=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/nether/lavasword=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/nether/laric=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 3 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 3","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを85程度まで上げ、ネザーでクエストLvを上げる。その後、ダンジョン:溶岩流から生まれるものに挑み、lava sword/laric swordを作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/fourteen=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/add_stone/ender=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/accessories/hair/ornaments=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/accessories/hair/ornaments_gold=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 4 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 4","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを95程度まで上げ、エンドでクエストLvを上げる。その後、ダンジョン:略奪者を追いかけた先にに挑み、ender symbol/巫の髪飾り/巫の髪飾り<金>を作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customenchanter/tablecraft=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを100程度まで上げ、enchanter++を作成する\n","color":"yellow"}]

tellraw @s [{"text":"前のページへ","hoverEvent": {"action":"show_text","contents":{"text":"クリックしてLv0-50を表示する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 1"},"color":"gold"}]
tellraw @s [{"text":"次のページへ","hoverEvent": {"action":"show_text","contents":[{"text":"クリックしてLv100-","color":"green"},{"score":{"name": "$GameMap","objective":"AllLV"},"color":"green"},{"text":"を表示する","color":"green"}]},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 3"},"color":"gold"}]
function mikatanserver:login/game_page/press_page

tellraw @s [{"text": "====================================================","color":"gold"}]