#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:134,display:{Name:'[{"text":"sand sword","color":"yellow"}]',Lore:['[{"text": "粉塵","color": "gray","italic": false}]','[{"text":" このアイテムを右クリックするとmanaを10消費して10m以内の最寄りのモブに小ダメージを与える","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 12.1","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.61","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:12.1,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.39,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],tier:2} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/sand



