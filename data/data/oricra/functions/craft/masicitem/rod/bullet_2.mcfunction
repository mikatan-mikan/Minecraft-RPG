#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:182,display:{Name:'[{"text":"bullet rod tier2","color":"gray"}]',Lore:['[{"text":"このアイテムを右クリックすると8方向に鉄の塊を打ち出す"}]','[{"text":"mana cost:30"}]']},Season:3} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/bullet_2



