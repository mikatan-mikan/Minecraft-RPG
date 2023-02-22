scoreboard players set @s VillagerFlag 0
scoreboard players add @s StoryVillagerTalk 1
execute if score @s StoryVillagerTalk matches 1 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "やぁやぁ久々だね","color": "white"}]
execute if score @s StoryVillagerTalk matches 2 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "され、そろそろ聖杯の入手手段についてだが...","color": "white"}]
execute if score @s StoryVillagerTalk matches 3 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "恐らく女神は賢者との決闘の後に手放したんじゃないかと思う。理由は...そうだな","color": "white"}]
execute if score @s StoryVillagerTalk matches 4 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "今は分からないかもしれないが、賢者が欲しがった理由を考えればそれも分かるんだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 5 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "要するに、賢者を倒せはいいんだよ。賢者をね","color": "white"}]

execute if score @s StoryVillagerTalk matches 6 run tellraw @s [{"text":"[","color":"yellow"},{"selector":"@s"},{"text":"]","color":"yellow"},{"text": "ん？だから、賢者は倒したんだよ？","color": "white"}]
execute if score @s StoryVillagerTalk matches 7 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "その話はいい。今は話を進めなくてはならない","color": "white"}]
execute if score @s StoryVillagerTalk matches 8 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "で、その聖杯だが、、、そう賢者が持っているはずの聖杯だ","color": "white"}]
execute if score @s StoryVillagerTalk matches 9 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "何故か私のもとに届いたんだ。まるで何かを望んでいるかのように","color": "white"}]
execute if score @s StoryVillagerTalk matches 10 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "私はこれを使おうと思う。何故手元にあるのかも不明だけど...ね？","color": "white"}]
execute if score @s StoryVillagerTalk matches 11 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "嫌な予感がするって？同感だよ","color": "white"}]
execute if score @s StoryVillagerTalk matches 12 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "だけど何もしなければ私の話は止まったばかりだ...","color": "white"}]
execute if score @s StoryVillagerTalk matches 13 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "きっと何かが始まる","color": "white"}]
execute if score @s StoryVillagerTalk matches 14 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "この日を覚えておこう。きっとすべてが解決する日まで・・・","color": "white"}]
execute if score @s StoryVillagerTalk matches 15 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "きっとこれがこの世界の命を奪った事件の始まりから解決すると信じて・・・","color": "white"}]
execute if score @s StoryVillagerTalk matches 15 run advancement grant @s only mikatanserver:story/v3/5
execute if score @s StoryVillagerTalk matches 15 run scoreboard players reset @s StoryVillagerTalk
playsound entity.villager.no master @s ~ ~ ~ 1 1