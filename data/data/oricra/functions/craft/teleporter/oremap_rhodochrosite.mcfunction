#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:33,display:{Name:'[{"text":"テレポート->rhodochrosite採掘場","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:鉱石world","color":"red"}]','[{"text":"必要条件:AllLv130以上"}]','[{"text":"持ち込み禁止：コンクリート"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/oremaptprhodochrosite