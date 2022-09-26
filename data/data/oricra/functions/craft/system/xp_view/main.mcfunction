#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{XPViewChange:true,display:{Name:'[{"text":"右クリックでXP表示形式を変更","color":"red","bold": true}]'}} 1
