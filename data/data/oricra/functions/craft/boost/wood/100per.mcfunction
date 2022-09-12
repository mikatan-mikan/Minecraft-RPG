#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:46,display:{Name:'[{"text":"AtkD XP Boost 1"}]',Lore:['{"text":"使用すると20分の間AtkDXPが1増加する"}']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/boost/wood/100per