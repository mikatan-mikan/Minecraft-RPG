#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:124,display:{Name:'[{"text":"mallet","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックすると数秒後に設置地点で爆発が起こる"}]','[{"text":"mana cost:40"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/music/mallet



