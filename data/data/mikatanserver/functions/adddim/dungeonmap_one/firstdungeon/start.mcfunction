tag @s add DungeonStart1
tag @s add CountLeader
tag @s add FirstDLeader
clear @s carrot_on_a_stick{CustomModelData:10} 1
tellraw @a ["",{"selector":"@s"},{"text":"\u304c5s\u5f8c\u306b"},{"text":"\u59cb\u307e\u308a\u306e\u30c0\u30f3\u30b8\u30e7\u30f3","color":"green"},{"text":"\u3092\u958b\u59cb\u3057\u307e\u3059\n\u53c2\u52a0\u8005\u306f","color":"white"},{"selector":"@s","color":"white"},{"text":"\u306e","color":"white"},{"text":"5m\u4ee5\u5185","color":"red"},{"text":"\u306b\u96c6\u307e\u3063\u3066\u304f\u3060\u3055\u3044","color":"white"}]
scoreboard objectives add DungeonStartCnt1 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/firstdungeon/sleep 5t