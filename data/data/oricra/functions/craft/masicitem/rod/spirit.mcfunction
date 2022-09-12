#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:65,display:{Name:'[{"text":"spirit rod","color":"dark_purple"}]',Lore:['[{"text":"このアイテムを右クリックすると周囲5mのモブを自身が向いている方向に吹き飛ばす"}]','[{"text":"mana cost:45"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/spiritrod



