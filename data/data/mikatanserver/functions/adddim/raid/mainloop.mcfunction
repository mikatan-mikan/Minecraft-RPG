##サーバーからtick呼び出し
execute if score $slime RAID_Flag matches 1 run function mikatanserver:adddim/raid/slime/mainloop
execute if score $giant RAID_Flag matches 1 run function mikatanserver:adddim/raid/giant/mainloop

##時間カウント変数
#function mikatanserver:adddim/raid/cnt_min