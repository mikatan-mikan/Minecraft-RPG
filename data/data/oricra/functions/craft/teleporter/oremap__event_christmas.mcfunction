#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:38,display:{Name:'[{"text":"テレポート->The Frosts","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:鉱石world","color":"red"}]','[{"text":"必要条件:実績ポイント400以上"}]','[{"text":"持ち込み禁止：コンクリート,氷塊,トウヒの原木,トウヒの葉"}]']},teleporter:1b} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/oremaptp_event_christmas