#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_shovel{display:{Name:'[{"text":"salamander shovel"}]'},CustomModelData:13,Unbreakable:1b} 1

#進捗
advancement grant @p only mikatanserver:event/salamander/shovel