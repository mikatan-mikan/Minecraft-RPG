execute as @a run scoreboard players add @s luckxp 300
execute as @a run scoreboard players add @s manaxp 100
execute as @a run scoreboard players add @s attackDxp 1000
execute as @a run give @s minecraft:carrot_on_a_stick{CustomModelData:42,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【超高難易度】","color": "red"},{"text":"奇跡の剣舞","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:無し"}]']}} 5
execute as @a run give @s minecraft:carrot_on_a_stick{CustomModelData:19,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【超高難易度】","color": "red"},{"text":"記憶の奥底に・・・","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv90以上"}]']}} 2
execute as @a run scoreboard players set @s FarmingLuckPT 10
tellraw @a [{"text": "luck xp + 300","color": "green"}]
tellraw @a [{"text": "mana xp + 100","color": "blue"}]
tellraw @a [{"text": "attack damage xp + 1000","color": "red"}]
tellraw @a [{"text": "奇跡の剣舞 * 5","color": "light_purple"}]
tellraw @a [{"text": "記憶の奥底に・・・ * 2","color": "red"}]
tellraw @a [{"text": "farming luck + 10","color": "green"}]