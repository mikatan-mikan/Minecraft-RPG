execute if score $now_hp PlayerHealth10 matches 45.. run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"#ff9900"}]'}
execute if score $now_hp PlayerHealth10 matches ..44 run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"#ff8000"}]'}