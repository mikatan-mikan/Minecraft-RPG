data = []
from decimal import Decimal

with open(r"C:\Users\mikasa\AppData\Roaming\.minecraft\saves\server_data_1.19\datapacks\data\data\mikatanserver\functions\item\specialskill\red\particle_2.mcfunction",encoding="utf-8",mode="r") as file:
    txt = file.readlines()
    for i in txt:
        str_ = i.split()
        if str_[0] == "particle":
            tmp = Decimal(str_[3][1:])
            tmp += Decimal('1.5')
            str_[3] = "^" + str(tmp)
        print(*str_)

