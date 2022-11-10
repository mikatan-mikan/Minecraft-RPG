from decimal import Decimal,ROUND_HALF_UP
import json
import os


path = input("変換元ファイルの絶対パスを入力：")
file = open(f"{path}",'r',encoding="utf-8_sig")
file = json.load(file)

def isint(s):  # 整数値を表しているかどうかを判定
    try:
        int(s, 10)  # 文字列を実際にint関数で変換してみる
    except ValueError:
        return False
    else:
        return True

def arrange_json(nbt) -> str:
    flag = 0
    cut = [False,False]
    add = []
    back = False
    nbt = nbt.replace("\\'","\\replace_quote\\")
    for i in range(len(nbt)):
        if back == True and nbt[i] == "\"":
            add.append(i)
        if nbt[i] == "'" and back == False:
            # add.append(i)
            nbt = nbt[:i] + "\"" + nbt[i + 1:]
            back = True
        elif nbt[i] == "'" and back == True:
            # add.append(i + 1)
            nbt = nbt[:i] + "\"" + nbt[i + 1:]
            back = False
    add.reverse()
    for i in add:
        nbt = nbt[:i] + "\\" + nbt[i:]
    add = []
    end = 0
    nbt = nbt.replace("\\replace_quote\\","\'")
    for i in range(len(nbt)):
        if nbt[i] == "{" and cut[0] == False and cut[1] == False and end == 0:#nbtの始まり
            flag = 1
        elif flag == 1:#要素に"をつける
            add.append(i)
            flag = 2
        elif flag == 2 and nbt[i] == ":":#区切りまで行くと"をつける
            add.append(i)
            flag = 3
            point = i + 1#次が数字+sのような物だった時にここに"を入れる
        #中に",'があったなら次にそれらが出てくるまでスキップする
        elif flag == 3:
            if nbt[i] == "\"" and nbt[i - 1] != "\\" and cut[1] == True:#次の"があった
                cut[1] = False
            elif nbt[i] == "\"" and cut[0] == False:#trueである間次の要素判定されない
                cut[1] = True
            elif nbt[i] == "[" and cut == [False,False]:
                end += 1
                tmp = i
                while True:#次の]まで探索
                    tmp += 1
                    if nbt[tmp] == "{":
                        end -= 1
                        break
                    if nbt[tmp] == "]" or "[": break
                tmp = i
                uuid_flag = False
                while True:#次の]まで探索
                    tmp += 1
                    if nbt[tmp] == "I":
                        uuid_flag = True
                        break
                    if nbt[tmp] == "]" or "[": break
                while True:#次の]まで探索
                    tmp += 1
                    if nbt[tmp] == "]":
                        break
                if uuid_flag == True : 
                    add.append(i)
                    add.append(tmp + 1)
            elif nbt[i] == "]" and cut == [False,False]:
                end -= 1
                tmp = i
                while True:#次の]まで探索
                    tmp -= 1
                    if nbt[tmp] == "}":
                        end += 1
                        break
                    if nbt[tmp] == "[" or "]": break
            elif end > 0:
                continue
            elif nbt[i] == "'" and nbt[i - 1] != "\\" and cut[0] == True:#次の"があった
                cut[0] = False
            elif nbt[i] == "'" and cut[1] == False:#trueである間次の要素判定されない
                cut[0] = True
            # elif nbt[i] == "[" and cut[0] == False and cut[1] == False:
            #     end += 1
            # elif nbt[i] == "]" and end > 0 and cut[0] == False and cut[1] == False:
            #     end -= 0
            # elif end > 0:
            #     continue
            elif nbt[i] == "}":
                if isint(nbt[point:i - 1]) == True:
                    add.append(point)
                    add.append(i)
            elif nbt[i] == "," and cut == [False,False]:#次の要素の始まり
                if isint(nbt[point:i - 1]) == True and nbt[i - 1] != "}":
                    add.append(point)
                    add.append(i)
                flag = 1
    add.sort()
    add.reverse()
    for i in add:
        nbt = nbt[:i] + "\"" + nbt[i:]
    return nbt

def arrange_space(line_msg) -> dict:
    for i in range(50 - len(line_msg["item"])):
        line_msg["item"] += " "
    return line_msg


def create_one_line(i,j,all_chance) -> dict:
    line = {}
    line["chance"] = Decimal(str(file["pools"][i]["entries"][j]["weight"] / all_chance * 100)).quantize(Decimal('0.01'), rounding=ROUND_HALF_UP)
    line["chance"] = '{:>6}'.format(line["chance"]) + '%'
    line["item"] = file["pools"][i]["entries"][j]["name"].split(":")[-1]
    if "functions" in file["pools"][i]["entries"][j]:
        for k in range(len(file["pools"][i]["entries"][j]["functions"])):
            if file["pools"][i]["entries"][j]["functions"][k]["function"].split(":")[-1] == "set_nbt":
                datum = file["pools"][i]["entries"][j]["functions"][k]["tag"]
                datum = arrange_json(datum)
                datum = json.loads(datum)
                str_name = datum["display"]["Name"]
                name = ""
                tmp_json = json.loads(str_name)
                for l in tmp_json:
                    if type(l) is dict:
                        name += l["text"]
                    else:
                        name += l
                line["item"] = name
    datum = 1
    if "functions" in file["pools"][i]["entries"][j]:
        for k in range(len(file["pools"][i]["entries"][j]["functions"])):
            if file["pools"][i]["entries"][j]["functions"][k]["function"].split(":")[-1] == "set_count":
                datum = file["pools"][i]["entries"][j]["functions"][k]["count"]
                if type(datum) is not int:
                    datum = f'{file["pools"][i]["entries"][j]["functions"][k]["count"]["min"]}-{file["pools"][i]["entries"][j]["functions"][k]["count"]["max"]}'
    line["drop_cnt"] = datum
    line = arrange_space(line)
    return line


def all_chance_check(i) -> int:
    all = 0
    for j in range(len(file["pools"][i]["entries"])):
        all += file["pools"][i]["entries"][j]["weight"]
    return all

def main():
    print("```")
    print(os.path.basename(path))
    for i in range(len(file["pools"])):
        print(f'\n抽選回数({file["pools"][i]["rolls"]})')
        print("item                                              | chance|drop_cnt")
        all_chance = all_chance_check(i)
        for j in range(len(file["pools"][i]["entries"])):
            drop_data = create_one_line(i,j,all_chance)
            print(f'{drop_data["item"]}|{drop_data["chance"]}|{drop_data["drop_cnt"]}')
    print("```")


if __name__ == "__main__":
    main()