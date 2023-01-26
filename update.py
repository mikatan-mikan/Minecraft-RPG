#せいさくちゅうー

import json

def make_file(w_file):
    w_file.write("[]")

def exec_mode(mode,ops):
    if type(mode) is not int:
        return
    if mode > 4:
        return
    try:
        r_file = open("./update.json","r")
    except:
        w_file = open("./update.json","w")
        make_file(w_file)
        w_file.close()
        r_file = open("./update.json","r")
    json_file = json.load("./update.json")
    if mode == 1:
        print("devs\t|year\t|month\t|day\t|type\t|update\t|id")
        for i in json_file:
            print(f'{i["dev"]}\t|{i["year"]}\t|{i["month"]}\t|{i["day"]}\t|{i["type"]}\t|{i["update"]}\t|{i["id"]}')
    if mode == 4:
        read_file = open("./update.mkt","r")
        if ops["read_file"] is not None:
            read_file = open(ops["read_file"],"r")
        w_file = open("./update.json","w")
        read_file = read_file.readlines()

def read_option(ops):
    if ops is None:
        return
    txt = []
    read_file = None
    for op in ops:
        op = op.split(":")
        prefix = op[0]
        try:
            operand = op[1]
        except:
            print("Error No.101(Warn) :オプションが不適切です(-any:None)")
            continue
        if prefix == "-txt":
            operand = operand.split(",")
            for i in range(5):
                try:
                    txt.append(operand[i])
                except:
                    print("Error No.102(Fatal):オプションが不適切です(-txt:[?,?,?,?,?])")
                    exit()
    return {"txt":txt,"read_file":read_file}


def input_mode():
    mode_intro = "show\t: 現在存在する予定を全て表示\nadd\t: 予定を追加\nchange\t: 予定を変更\nload\t: 他のファイルの予定を読み込む"
    txt = "モードを選択\nshow:1 add:2 change:3 load:4"
    option = "-txt:[yyyy,mm,dd,type,update]"

    txt = mode_intro + "\n" + txt + "\n" + option

    mode = input(txt)
    mode = mode.split()

    try:
        m = mode[0]
        o = mode[1:]
    except:
        o = None

    return m,o


if __name__ == "__main__":
    mode,option = input_mode()
    op_dict = read_option(option)
    exec_mode(mode,op_dict)
