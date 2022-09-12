#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:73,display:{Name:'[{"text":"pointer rod","color":"yellow"}]',Lore:['[{"text":"このアイテムを右クリックすると7m以内の最寄りの敵を攻撃する。"}]','[{"text":"攻撃がヒットした場合耐性1を0.4s受ける。"}]','[{"text":"mana cost:50"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/pointer_rod



