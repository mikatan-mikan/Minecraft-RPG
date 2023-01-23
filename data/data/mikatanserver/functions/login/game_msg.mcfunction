tellraw @s [{"text": "====================================================","color":"gold"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:customcrafter/tablecraft=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを10まで上げ、作業台に額縁を置き、ネザライトブロックを置いてcrafter++を作成する\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/dungeon/first=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを10まで上げ、始まりのダンジョンに挑み、システムを理解する。\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:event/ender/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/nether/tp=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 2 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 2","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを10まで上げ、エリア:Ender/Netherに向かい、システムを理解する。\n","color":"yellow"}]

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:tp/ruby=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 1 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 1","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを20まで上げ、Ruby採石場へと足を運ぶ\n","color":"yellow"}]

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
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを50程度まで上げ、mana charger/mana charger tier2/翠杖を作成する\n","color":"yellow"}]

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

scoreboard players set $chat_bool TMP 0
execute if entity @s[advancements={mikatanserver:event/newyear_2023/tp=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:customcrafter/add_stone/egg=true}] run scoreboard players add $chat_bool TMP 1
execute if entity @s[advancements={mikatanserver:event/newyear_2023/coldly=true}] run scoreboard players add $chat_bool TMP 1
data merge storage mikatanserver:chat {"Check":'[{"text":"✖","color":"red"}]'}
execute if score $chat_bool TMP matches 3 run data merge storage mikatanserver:chat {"Check":'[{"text":"✔","color":"green"}]'}
data merge storage mikatanserver:chat {"Bool":'[{"text":"達成度","color":"green"},{"text":" : ","color":"white"},{"score":{"name":"$chat_bool","objective":"TMP"},"color":"green"},{"text":" / 3","color":"green"}]'}
tellraw @s [{"nbt":"Bool","storage":"mikatanserver:chat","interpret": true},{"nbt":"Check","storage":"mikatanserver:chat","interpret": true},{"text": "\n"},{"text": "全てのLvを105程度まで上げ、ダンジョン:その先に出した答えに挑み、eggsymbolを作成/エリア:ice landへ向かう/coldly swordを作成する\n","color":"yellow"}]

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

tellraw @s [{"text": "====================================================","color":"gold"}]

data remove storage mikatanserver:chat Bool
data remove storage mikatanserver:chat Check

scoreboard players reset @s FirstChatFlag