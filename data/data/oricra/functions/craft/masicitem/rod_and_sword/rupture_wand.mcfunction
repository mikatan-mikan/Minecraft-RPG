#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:98,display:{Name:'[{"text":"rupture wand","color":"dark_purple"}]',Lore:['[{"text": "空気圧縮","color": "gray","italic": false}]','[{"text":" このアイテムを右クリックするとmanaを55消費して10m以内の最寄りのモブをランダムな方向に飛ばす","color": "blue","italic": false}]','[{"text": "霊の加護","color": "gray","italic": false}]','[{"text": " 条件：空気圧縮発動時にpurple cluster装備で統一されている","color": "blue","italic": false}]','[{"text": " 耐性1(1s)を付与し、manaを10回復、対象のモブに鈍足2(4s)を付与する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 12","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:12,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],tier:2} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/rupture_wand



