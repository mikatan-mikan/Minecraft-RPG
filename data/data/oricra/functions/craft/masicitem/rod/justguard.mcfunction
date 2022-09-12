#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:35,display:{Name:'[{"text":"just guard","color":"gray"}]',Lore:['[{"text":"このアイテムを右クリックすると1秒の間ダメージ無効状態になる"}]','[{"text":"mana cost:5"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/justguard



