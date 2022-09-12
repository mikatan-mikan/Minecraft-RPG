#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:book{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['[{"text":"この本を使ってエンチャントすると、対象の火力が1上昇する[上限1]"}]']},potato:1} 1


scoreboard players add @p potatobookcraft 1

#実績
advancement grant @p only mikatanserver:customcrafter/ench/potato