scoreboard players set @s VillagerFlag 0
scoreboard players add @s StoryVillagerTalk 1
execute if score @s StoryVillagerTalk matches 1 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "君は聖杯を知っているかい？","color": "white"}]
execute if score @s StoryVillagerTalk matches 2 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "そうか、、、知らないか","color": "white"}]
execute if score @s StoryVillagerTalk matches 3 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "ここには昔聖杯があったんだ。そう\"聖杯\"がね","color": "white"}]
execute if score @s StoryVillagerTalk matches 4 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "その聖杯をある時、女神を名乗る者と賢者を名乗るものが盗んだんだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 5 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "その聖杯が何になるのかって？","color": "white"}]
execute if score @s StoryVillagerTalk matches 6 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "この場所を見ればわかるんじゃないのかい？","color": "white"}]
execute if score @s StoryVillagerTalk matches 7 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "そんなに気にしなくていいんだよ","color": "white"}]
execute if score @s StoryVillagerTalk matches 8 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "もし君が聖杯を見つければ、、それは、、、、","color": "white"}]
execute if score @s StoryVillagerTalk matches 9 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "さぁ、もういくんだ。君も冒険の途中だろ？","color": "white"}]
execute if score @s StoryVillagerTalk matches 10 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "もうちょっと話がしたい？","color": "white"}]
execute if score @s StoryVillagerTalk matches 11 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "変わってるな。でもまた君とはまたどこかで出会う予感がするよ","color": "white"}]
execute if score @s StoryVillagerTalk matches 11 run advancement grant @s only mikatanserver:story/v3/1
execute if score @s StoryVillagerTalk matches 11 run scoreboard players reset @s StoryVillagerTalk
playsound entity.villager.no master @s ~ ~ ~ 1 1