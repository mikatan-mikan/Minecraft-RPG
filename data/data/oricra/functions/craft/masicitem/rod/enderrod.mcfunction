#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:25,display:{Name:'[{"text":"ender rod","color":"dark_green"}]',Lore:['[{"text":"このアイテムを右クリックすると目線の方向にエンダーパールを放つ"}]','[{"text":"mana cost:55"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/enderrod



