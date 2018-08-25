import sys
# 再帰の回数に上限があるのでそれを上げる
sys.setrecursionlimit(100000)
 
# 横並びに同じものがあるところを削除する
def del_all_dot_list(a):
    del_index = []
    for i in range(len(a)):
        # 対象となるリスト内要素全てが"."と一致するか見る(mapでTrue, Falseに変換 -> allはその配列の要素が全てがTrueのときのみTrueを返す
        if all(map(lambda x: x=='.', a[i])):
            del_index.append(i)
    for i in del_index[::-1]: # 後ろから消していかないとエラーが起きる
        del a[i]
    return a

# 行列を縦横入れ替える 
def spin(a):
    # リスト内の各リストの最初の要素と取ってきて結合する
    if len(a[0]) == 1:
        return [''.join(list(map(lambda x: x[0], a)))]
    else:
        return [''.join(list(map(lambda x: x[0], a)))] + spin(list(map(lambda x: x[1:], a)))

def main():
    # 入力を受け取る
    h, w = map(int, input().split())
    a = [input() for i in range(h)]
    deleted = del_all_dot_list(a) # 横並びに同じものがあるところを削除する
    spined = spin(deleted) # 縦横を入れ替える
    deleted = del_all_dot_list(spined) # 回転して縦横が入れ替わったので、同じように横並びに同じものがあるところを削除する
    result = spin(deleted) # 再度縦横を入れ替えてもとに戻す
    [print(x) for x in result] # リストの各要素を出力する

if __name__ == '__main__':
    main()


