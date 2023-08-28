
function mikatanserver:main/lvup/_lvset
function mikatanserver:item/teleporter/tag/raid/check
function mikatanserver:main/utils_num/get_alllv
    ##special skill
    execute unless score @s SpecialSkill matches 0.. run scoreboard players set @s SpecialSkill 0
    execute unless score @s SpecialSkillMax matches 0.. run scoreboard players set @s SpecialSkillMax 150
##表示許可
scoreboard players enable @s FirstChatFlag

##TODO
team join BaseTeam @a[team=!IceTeam,team=!OrangeTeam,team=!RuinsTeam,team=!AngelTeam,team=!BaseTeam]

execute if score @s LogCheck_Timer matches 20 run playsound entity.player.levelup master @s ~ ~ ~ 2 1
execute if score @s LogCheck_Timer matches 20 run tellraw @s [{"text": "welcome to "},{"text": "mikatan server","color": "gold"}]


# execute if score @s LogCheck_Timer matches 20 run tellraw @s [{"text": ">>","color": "aqua"},{"text": "レベルについて","color": "green","hoverEvent": {"action": "show_text","contents": [{"text": "Hp Xp","color": "light_purple"},{"text": ":村人との交易で得ることができ、25Lvあたり1上昇します\n","color": "white"},{"text": "AtkD Xp","color": "red"},{"text": "木こりによってXpを上昇させることができ、1Lvあたり2%上昇します\n","color": "white"},{"text": "AtkS Xp","color": "gold"},{"text": ":敵との戦闘によりXpを得られ、1Lvあたり0.1%上昇します\n","color": "white"},{"text": "Luck Xp","color": "green"},{"text": ":釣りと作物の回収によりXpが得られ、1Lvあたりluckが0.3%上昇、farmingluckが0.1%ずつ上昇\n","color": "white"},{"text": "Speed Xp","color": "aqua"},{"text": ":基本的な石の採掘によってXpを得ることができ、1Lvあたり0.3%上昇します\n","color": "white"},{"text": "Mana Xp","color": "blue"},{"text": ":エンチャントにより上昇し1Lvあたり1上昇します","color": "white"}]}},{"text": "<<","color": "aqua"}]
execute if score @s LogCheck_Timer matches 20 run tellraw @s [{"text": ">>","color": "aqua"},{"text": "チュートリアル","color": "green","hoverEvent": {"action":"show_text","contents":{"text":"クリックして開始する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2147483647"}},{"text": "<<","color": "aqua"}]


execute if score @s LogCheck_Timer matches 20 run tellraw @s [{"text": ">>","color": "aqua"},{"text": "使用ツール・規約・その他","color": "yellow","hoverEvent": {"action": "show_text","contents": [{"text":""},{"text": "\uE001\uF82C\uE002\uF82C\uE003","font":"add_fonts"},{"text":"\n            Visual Studio Code                   .NET Framework                    Python\n\n\n"},{"text": "このサーバーに実装されたすべての著作物はmitsukiGroupが権利を保有します。"},{"text":"\nまた、使用ツール・規約・その他の内容は予告なく追加されることがあります。"},{"text": "\nこのサーバーにログインを続けること又は、2022/10/1以降に著作物を譲渡した場合にはこれらを理解したとみなされます。"}]}},{"text": "<<","color": "aqua"}]

execute if score @s LogCheck_Timer matches 20 run tellraw @s [{"text": ">>","color": "aqua"},{"text":"ゲームの進め方(Lv","hoverEvent": {"action":"show_text","contents":{"text":"クリックして表示する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 1"},"color":"gold"},{"score":{"name": "$GameMap","objective":"AllLV"},"hoverEvent": {"action":"show_text","contents":{"text":"クリックして表示する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 1"},"color":"gold"},{"text": "以下対応)","hoverEvent": {"action":"show_text","contents":{"text":"クリックして表示する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 1"},"color":"gold"},{"text": "<<","color": "aqua"}]

execute if score @s LogCheck_Timer matches 20 run tellraw @s [{"text": ">>","color": "aqua"},{"text":"マークの変更","hoverEvent": {"action":"show_text","contents":{"text":"クリックして表示する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2000000000"},"color":"red"},{"text": "<<","color": "aqua"}]
 

##現在の最大HPを記憶する
execute store result score @s PlayerHealth10Max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 10

execute if score @s LogCheck_Logger matches 1 if block ~ ~ ~ air run scoreboard players set @s LogCheck_Timer 0
execute if score @s LogCheck_Logger matches 1 if block ~ ~ ~ air run scoreboard players reset @s LogCheck_Logger


#tellraw @s [{"text": "welcome to"},{"text": "mikatan server\n","color": "gold"},{"text": ">>","color": "aqua"},{"text": "レベルについての説明","color": "green","hoverEvent": {"action": "show_text","contents": [{"text": "a"}]}},{"text": "<<","color": "aqua"}]
