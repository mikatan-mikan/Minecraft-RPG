#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:142,display:{Name:'[{"text":"テレポート->Storm Masic Map","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:鉱石world","color":"red"}]','[{"text":"持ち込み禁止：本,本棚,コンクリート"}]']},teleporter:1b,Season:3} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/oremaptp_masic_wind2