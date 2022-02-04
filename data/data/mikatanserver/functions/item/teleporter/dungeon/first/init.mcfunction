execute if entity @a[tag=DungeonPlay_1] run tellraw @s [{"text":"このダンジョンは現在プレイされています\n一定時間後に再試行してください","color": "red"}]
execute if entity @s[tag=DungeonStart1] run tellraw @s [{"text":"現在他のダンジョンへの出発を予定しているため実行できませんでした"}]
execute unless entity @s[tag=DungeonStart1] in mikatanserver:dungeon unless entity @e[tag=FirstDunNowP] run function mikatanserver:adddim/dungeonmap_one/firstdungeon/start