execute if score $now_hp PlayerHealth10 matches 82.. run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"#80ff00"}]'}
execute if score $now_hp PlayerHealth10 matches ..81 run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"#bfff00"}]'}