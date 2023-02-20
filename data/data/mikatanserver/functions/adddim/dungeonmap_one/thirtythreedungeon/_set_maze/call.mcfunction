# function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/call
execute if data storage mikatanserver:maze 33_runtime run tellraw @a [{"text":"現在他の地形を生成中ですしばらくお待ちください"}]
execute unless data storage mikatanserver:maze 33_runtime run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/main
