execute as @a run give @s carrot_on_a_stick{GiveXp:2000}
execute as @a run give @s minecraft:carrot_on_a_stick{CustomModelData:42,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【超高難易度】","color": "red"},{"text":"奇跡の剣舞","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:無し"}]']}} 8
execute as @a run give @s minecraft:carrot_on_a_stick{CustomModelData:66,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【超高難易度】","color": "red"},{"text":"<<略奪者を追いかけた先に>>","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv95以上"}]']}} 4
execute as @a run give @s nautilus_shell{CustomModelData:24,display:{Name:'[{"text":"enchanted ruins flower"}]'},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 64
execute as @a run give @s nautilus_shell{CustomModelData:23,display:{Name:'[{"text":"enchanted ruins crystal"}]'},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 64
execute as @a run give @s minecraft:nautilus_shell{CustomModelData:20,display:{Name:'[{"text":"hell powder","color": "red"}]'}} 1
tellraw @a [{"text": "AllXp xp + 2000","color": "red"}]
tellraw @a [{"text": "奇跡の剣舞 * 8","color": "light_purple"}]
tellraw @a [{"text": "略奪者を追いかけた先に * 4","color": "yellow"}]
tellraw @a [{"text": "hell powder * 1","color": "red"}]
tellraw @a [{"text": "enchanted ruins flower * 64","color": "green"}]
tellraw @a [{"text": "enchanted ruins crystal * 64","color": "green"}]