#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:24,display:{Name:'[{"text":"fire ball rod","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックすると目線の方向にファイアボールを放つ"}]','[{"text":"mana cost:27"}]']},fireball:1s} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/fireball



