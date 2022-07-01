#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:48,display:{Name:'[{"text":"Luck XP Boost 9"}]',Lore:['{"text":"使用すると20分の間LuckXPが9増加する"}']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/boost/fish/900per