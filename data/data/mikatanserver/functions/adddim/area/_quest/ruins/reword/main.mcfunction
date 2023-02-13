execute if score @s QUEST_RUINS_LEVEL matches 1 run give @s minecraft:carrot_on_a_stick{CustomModelData:87,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【超高難易度】","color": "red"},{"text":"\\"めがみ\\"と\\"めがみ\\"？","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv135以上,ルインズクエストLv15以上"}]']},teleporter:1b} 3

execute if score @s QUEST_RUINS_LEVEL matches 5 run give @s minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅠ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に20%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:1} 1

execute if score @s QUEST_RUINS_LEVEL matches 10 run give @s minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に40%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:2} 1

execute if score @s QUEST_RUINS_LEVEL matches 15 run give @s minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅠⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に60%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:3} 1


execute if score @s QUEST_RUINS_LEVEL matches 25 run give @s minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅠⅤ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に80%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:4} 1


scoreboard players operation $RUINS_MOD15 Temporary = @s QUEST_RUINS_LEVEL
scoreboard players operation $RUINS_MOD15 Temporary %= $15 int

execute if score $RUINS_MOD15 Temporary matches 0 run give @s minecraft:deepslate_diamond_ore 64
execute if score $RUINS_MOD15 Temporary matches 10 run give @s minecraft:lapis_ore 64