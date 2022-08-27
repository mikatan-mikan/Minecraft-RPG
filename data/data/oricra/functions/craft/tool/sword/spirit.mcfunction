#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"霊剣","color": "dark_purple"}]',Lore:['[{"text": "亡霊の鳴声","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを100消費して周囲5mのモブに対して","color":"blue","italic": false},{"text": "亡霊の束縛","color":"dark_purple"},{"text": "を与える","color": "blue","italic": false}]','[{"text": "太陽の輝き","color": "gray","italic": false}]','[{"text": " 条件：亡霊の鳴声発動時に装備がsunstoneで統一されている","color": "blue","italic": false}]','[{"text": " 自身に攻撃力上昇1(2s)、再生能力1(10s)を付与し、周囲10mの自分以外の味方にスピード3(3s)を付与する","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 10","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:54,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116]},{AttributeName:"generic.attack_damage",Amount:10,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],spirit_item:1b} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/tool/spirit
advancement grant @p only mikatanserver:customcrafter/add_stone/spirit/sword