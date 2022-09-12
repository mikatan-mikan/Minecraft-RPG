#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:magma_cream{display:{Name:'[{"text": "dungeon speeder","color":"dark_purple"}]',Lore:['[{"text":"このアイテムをインベントリの左上から一つ横にセットすると20%の確率で直接攻撃時にmanaを5回復する"}]','[{"text": "条件：ダンジョンのクリア回数が10以上である"}]']},CustomModelData:32} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/farming/dungeon