give @p lever{display:{Name:'[{"text": "Tresure Key","color": "yellow","bold": true}]'},tresurekey:1}
tellraw @a[tag = DungeonPlay_12] ["",{"selector":"@p"},{"text": "が","color": "white"},{"text": "Tresure Key","color": "yellow"},{"text": "を発見しました！","color": "white"}]
kill @s