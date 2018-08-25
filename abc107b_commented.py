import sys
# 再帰の回数に上限があるのでそれを上げる
sys.setrecursionlimit(100000)
 
# 全てが"."の行を削除する
def delete_dot_rows(a):
    del_index = []
    for i in range(len(a)):

# 対象となるリスト内要素全てが"."と一致するか見る(mapでTrue, Falseに変換 -> allはその配列の要素が全てがTrueのときのみTrueを返す
        if all(map(lambda x: x=='.', a[i])):
            del_index.append(i)

# 後ろから消していかないとエラーが起きる
    for i in del_index[::-1]:
        del a[i]

    return a

# 行列を縦横入れ替える 
def flip(a):
# リスト内の各リストの最初の要素と取ってきて結合する
    if len(a[0]) == 1:
        return [''.join(list(map(lambda x: x[0], a)))]

    else:
        return [''.join(list(map(lambda x: x[0], a)))] + flip(list(map(lambda x: x[1:], a)))

def main():
# 入力を受け取る
    h, w = map(int, input().split())
    a = [input() for i in range(h)]

# 全てが"."の行を削除する
    deleted_rows = delete_dot_rows(a)

# 行列の縦横を入れ替える
    flipped = flip(deleted_rows)
    
# 回転して縦横が入れ替わったので、同じように全てが"."の行を削除する
    deleted_rows_and_colums = delete_dot_rows(flipped)

# 再度縦横を入れ替えてもとに戻す
    result = flip(deleted_rows_and_colums)

# リストの各要素を出力する
    [print(x) for x in result]

if __name__ == '__main__':
    main()


