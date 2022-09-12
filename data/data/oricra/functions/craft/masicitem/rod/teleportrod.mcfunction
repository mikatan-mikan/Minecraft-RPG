#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"teleporter rod","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると8ブロック先へtpし、1秒間の空中浮遊を付与する"}]','[{"text":"mana cost:75"}]']},CustomModelData:1} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/teleportrod



