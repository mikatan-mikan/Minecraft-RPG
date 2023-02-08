#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "ウィザーのお守り","color":"black"}]',Lore:['[{"text":"このアイテムをインベントリの左上にセットするとLv5以下のウィザー状態を無効にする","color": "white"}]']},CustomModelData:77} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/unti_effect/wither