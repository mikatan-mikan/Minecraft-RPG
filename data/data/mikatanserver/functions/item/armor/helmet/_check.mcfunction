##ヘルメットスロットに関するアイテムのセット要求時
#silf helmet
execute if score @s CustomModelData matches 146 run function mikatanserver:item/armor/helmet/silf_hat/set


#手元のアイテムを削除
item replace entity @s weapon.mainhand with air