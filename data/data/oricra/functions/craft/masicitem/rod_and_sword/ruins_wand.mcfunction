#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:85,display:{Name:'[{"text":"ruins wand","color":"green"}]',Lore:['[{"text": "古代魔術","color": "gray","italic": false}]','[{"text":" このアイテムを右クリックするとmanaを40消費して前方に魔法を放つ","color": "blue","italic": false}]','[{"text": "歴史の加速","color": "gray","italic": false}]','[{"text": " 条件：古代魔術発動時にspeed batchが装備されている","color": "blue","italic": false}]','[{"text": " 耐性1(2s)を付与する","color": "blue","italic": false}]','[{"text": "恋心","color": "gray","italic": false}]','[{"text": " 条件：古代魔術発動時に防具がロードクロサイトで統一されている","color": "blue","italic": false}]','[{"text": " manaを10消費して4hp回復する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 11","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:11,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],tier:2} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/ruins_wand



