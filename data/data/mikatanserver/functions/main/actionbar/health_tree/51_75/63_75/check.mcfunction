execute if score $now_hp PlayerHealth10 matches 70.. run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"#ffff00"}]'}
execute if score $now_hp PlayerHealth10 matches ..69 run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"#ffe600"}]'}