#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:83,display:{Name:'[{"text":"テレポート->The Frozen World","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:鉱石world","color":"red"}]','[{"text":"必要条件:無し"}]','[{"text":"持ち込み禁止：羊毛,トウヒの原木,本棚,本"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/oremaptp_event_christmas_2022