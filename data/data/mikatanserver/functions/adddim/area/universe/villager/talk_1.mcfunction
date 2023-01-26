scoreboard players set @s VillagerFlag 0
scoreboard players add @s StoryVillagerTalk 1
execute if score @s StoryVillagerTalk matches 1 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "あぁ、久しぶりだね？","color": "white"}]
execute if score @s StoryVillagerTalk matches 2 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "この場所が何かって？","color": "white"}]
execute if score @s StoryVillagerTalk matches 3 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "今回は最初に聞くんだね。まぁ最後に教えてあげるよ","color": "white"}]
execute if score @s StoryVillagerTalk matches 4 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "それで、聖杯の話の続きだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 5 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "前回女性の話を出したが、それについてもだ","color": "white"}]
execute if score @s StoryVillagerTalk matches 6 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "ようするに・・・聖杯があれば何とかできるかもしれないんだ...","color": "white"}]
execute if score @s StoryVillagerTalk matches 7 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "・・・","color": "white"}]
execute if score @s StoryVillagerTalk matches 8 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "・・・","color": "white"}]
execute if score @s StoryVillagerTalk matches 9 run tellraw @s [{"text":"[","color":"yellow"},{"selector":"@s"},{"text":"]","color":"yellow"},{"text": "話が詰まっても仕方ないね。ところでまだ聞いてなかったけど名前は何なんだい？","color": "white"}]
execute if score @s StoryVillagerTalk matches 10 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "それはまだ秘密だ。私の行く先に、光があればその時に...","color": "white"}]
execute if score @s StoryVillagerTalk matches 11 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "そうだね、それはそうと君は全てを信じるのかい？","color": "white"}]
execute if score @s StoryVillagerTalk matches 12 run tellraw @s [{"text":"[","color":"yellow"},{"selector":"@s"},{"text":"]","color":"yellow"},{"text": "なぜ？","color": "white"}]
execute if score @s StoryVillagerTalk matches 13 run tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "そうだな。これは夢だからだよ。","color": "white"}]
execute if score @s StoryVillagerTalk matches 13 run advancement grant @s only mikatanserver:story/v3/3
playsound entity.villager.no master @s ~ ~ ~ 1 1
execute if score @s StoryVillagerTalk matches 13 run gamerule showDeathMessages false
execute if score @s StoryVillagerTalk matches 13 run tellraw @a [{"selector":"@s"},{"text":"は夢から覚めた"}]
execute if score @s StoryVillagerTalk matches 13 run kill @s
execute if score @s StoryVillagerTalk matches 13 run gamerule showDeathMessages true
execute if score @s StoryVillagerTalk matches 13 run scoreboard players reset @s StoryVillagerTalk