#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:golden_apple{CustomModelData:2,display:{Name:'[{"text": "金のチェリー","color": "red"}]'}} 64

#進捗
advancement grant @p only mikatanserver:event/cherry/golden_cherry