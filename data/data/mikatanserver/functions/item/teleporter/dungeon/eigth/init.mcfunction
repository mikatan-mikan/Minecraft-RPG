execute if entity @a[tag=DungeonPlay_8] run tellraw @s [{"text":"このダンジョンは現在プレイされています\n一定時間後に再試行してください","color": "red"}]
execute if entity @s[tag=DungeonStart8] run tellraw @s [{"text":"現在他のダンジョンへの出発を予定しているため実行できませんでした"}]
execute unless entity @s[tag=DungeonStart8] in mikatanserver:dungeon unless entity @a[tag=DungeonPlay_8] run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/start