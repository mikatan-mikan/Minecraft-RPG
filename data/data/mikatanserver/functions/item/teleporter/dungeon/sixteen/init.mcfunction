execute if entity @a[tag=DungeonPlay_16] run tellraw @s [{"text":"このダンジョンは現在プレイされています\n一定時間後に再試行してください","color": "red"}]
execute if entity @s[tag=DungeonStart16] run tellraw @s [{"text":"現在他のダンジョンへの出発を予定しているため実行できませんでした"}]
execute unless entity @s[tag=DungeonStart16] in mikatanserver:dungeon unless entity @a[tag=DungeonPlay_16] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/start