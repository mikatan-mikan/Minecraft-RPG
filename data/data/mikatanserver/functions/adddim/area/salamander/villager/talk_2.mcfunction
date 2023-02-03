scoreboard players set @s VillagerFlag 0
scoreboard players add @s StoryVillagerTalk 1
execute if score @s StoryVillagerTalk matches 1 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "やぁ、久しぶりだね...","color": "white"}]
execute if score @s StoryVillagerTalk matches 2 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "ここは何かだって？随分と急ぐんだね","color": "white"}]
execute if score @s StoryVillagerTalk matches 3 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "でも、ここが何かはまだ言わないよ","color": "white"}]
execute if score @s StoryVillagerTalk matches 4 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "聖杯の話の続きをしよう","color": "white"}]
execute if score @s StoryVillagerTalk matches 5 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "そうだね、聖杯は恐らくだけど...","color": "white"}]
execute if score @s StoryVillagerTalk matches 6 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "持っているのは女神と賢者だろう","color": "white"}]
execute if score @s StoryVillagerTalk matches 7 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "...と言われてきたんだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 8 run tellraw @s [{"text":"[","color":"yellow"},{"selector":"@s"},{"text":"]","color":"yellow"},{"text": "だけど、女神はすでに倒しているはず...","color": "white"}]
execute if score @s StoryVillagerTalk matches 9 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "そうなんだ、既に女神は倒されているはずなんだよ","color": "white"}]
execute if score @s StoryVillagerTalk matches 10 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "だけど女神は聖杯なんて持っていなかった...","color": "white"}]
execute if score @s StoryVillagerTalk matches 11 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "するとどうだろう...後は賢者だけなんだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 12 run tellraw @s [{"text":"[","color":"yellow"},{"selector":"@s"},{"text":"]","color":"yellow"},{"text": "賢者も倒しているはず...","color": "white"}]
execute if score @s StoryVillagerTalk matches 13 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "倒している？それは寝言かい？","color": "white"}]
execute if score @s StoryVillagerTalk matches 14 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "まぁいい。とにかく賢者を探すのがいい","color": "white"}]
execute if score @s StoryVillagerTalk matches 15 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "私はそのために色々な地をまわってるんだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 16 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "君はまだここにいるだろう？それじゃあまた会おう","color": "white"}]
execute if score @s StoryVillagerTalk matches 16 run advancement grant @s only mikatanserver:story/v3/4
execute if score @s StoryVillagerTalk matches 16 run scoreboard players reset @s StoryVillagerTalk
playsound entity.villager.no master @s ~ ~ ~ 1 1