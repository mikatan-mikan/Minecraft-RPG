scoreboard players set @s VillagerFlag 0
scoreboard players add @s StoryVillagerTalk 1
execute if score @s StoryVillagerTalk matches 1 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "あぁ、君か君か、やっぱり来たね","color": "white"}]
execute if score @s StoryVillagerTalk matches 2 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "それで聖杯は何なんだって？","color": "white"}]
execute if score @s StoryVillagerTalk matches 3 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "うーん、ここのことは聞かないんだね","color": "white"}]
execute if score @s StoryVillagerTalk matches 4 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "まぁいいか","color": "white"}]
execute if score @s StoryVillagerTalk matches 5 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "そうだね、聖杯はいわば願いを叶えてくれるものと言われている","color": "white"}]
execute if score @s StoryVillagerTalk matches 6 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "ん？それじゃあなんで砂漠にいたのかって？","color": "white"}]
execute if score @s StoryVillagerTalk matches 7 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "昔ね、一緒に旅をしていた女性がいたんだ、、","color": "white"}]
execute if score @s StoryVillagerTalk matches 8 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "名前？もう忘れたね。そんなことはどうでもいいんだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 9 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "後は察しておくれ","color": "white"}]
execute if score @s StoryVillagerTalk matches 10 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "それでここは何だって？","color": "white"}]
execute if score @s StoryVillagerTalk matches 11 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "どちらにしてもそれはまだ早い","color": "white"}]
execute if score @s StoryVillagerTalk matches 12 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "ところで、最近全然寝れてなさそうだね","color": "white"}]
execute if score @s StoryVillagerTalk matches 13 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "一旦寝た方がいいかもしれないよ？","color": "white"}]
execute if score @s StoryVillagerTalk matches 14 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "案外いいことが思いついたりするもんだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 15 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "それじゃあまたどこかで","color": "white"}]
execute if score @s StoryVillagerTalk matches 15 run advancement grant @s only mikatanserver:story/v3/2
execute if score @s StoryVillagerTalk matches 15 run scoreboard players reset @s StoryVillagerTalk
playsound entity.villager.no master @s ~ ~ ~ 1 1