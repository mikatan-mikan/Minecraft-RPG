#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:36,display:{Name:'[{"text":"chaos rod","color":"dark_purple"}]',Lore:['[{"text":"このアイテムを右クリックする自身の位置に謎の塊を呼びだし数秒後に敵を集め爆破する"}]','[{"text":"mana cost:50"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/chaos



