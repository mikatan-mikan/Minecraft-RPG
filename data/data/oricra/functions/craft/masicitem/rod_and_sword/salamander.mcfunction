#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:163,display:{Name:'[{"text":"salamander rod","color":"red"}]',Lore:['[{"text": "迷いの炎","color": "gray","italic": false}]','[{"text":" このアイテムを右クリックするとmanaを35消費して5m以内の味方に対して炎の呪いを与え、自身に攻撃力上昇を与える。","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 13","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:13,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]},{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;120123481,-105458275,-295946392,53618116]}],Season:3} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/salamander