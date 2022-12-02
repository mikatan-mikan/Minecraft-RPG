#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1}],display:{Name:'[{"text":"ancient rod","color": "yellow"}]',Lore:['[{"text": "ダメージ増加Ⅴ","color": "gray","italic": false}]','[{"text": "過去の叡智","color": "gray","italic": false}]','[{"text": " manaを10消費し、周囲5mのモブを永久的に燃やす","color": "blue","italic": false}]','[{"text": "古代技術","color": "gray","italic": false}]','[{"text": " 条件：右クリック時にruins装備で統一されている","color": "blue","italic": false}]','[{"text": " manaを35消費して周りの味方に耐性Ⅰ(3s)を付与し、","color": "blue","italic": false},{"text": "古代の弾丸","color": "yellow","italic": false},{"text": "を放つ","color": "blue","italic": false}]','[{"text": "新技術","color": "gray","italic": false}]','[{"text": " 条件：右クリック時にforest装備で統一されている","color": "blue","italic": false}]','[{"text": " manaを20消費し、周囲の味方を4hp回復し、自分以外の周囲の味方のmanaを5回復する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 12","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:122,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:12,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],tier:2} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/ancient