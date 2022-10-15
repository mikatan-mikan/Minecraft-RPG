#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:99,display:{Name:'[{"text":"ruins tact","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると最寄りのエンティティに敵対する味方モブを召喚します"}]','[{"text":"有効時間：10秒"}]','[{"text":"発動条件：周囲10mにエンティティが存在する場合"}]','[{"text":"mana cost:70"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tact/three



