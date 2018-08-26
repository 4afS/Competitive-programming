import sys
# 再帰の回数に上限があるのでそれを上げる
sys.setrecursionlimit(100000)
 
# "#"が含まれた行だけを取り出す
def compress(a):
    return [l for l in a if any(map(lambda x: x=='#', l))]

# 行列を縦横入れ替える 
def transpose(a):
# リスト内の各リストの最初の要素と取ってきて結合する
    if len(a[0]) == 1:
        return [''.join(list(map(lambda x: x[0], a)))]

    else:
        return [''.join(list(map(lambda x: x[0], a)))] + transpose(list(map(lambda x: x[1:], a)))

def main():
# 入力を受け取る
    h, w = map(int, input().split())
    a = [input() for i in range(h)]

# 全てが"."の行を削除する
    compressed = compress(a)

# 行列の縦横を入れ替える
    transposed = transpose(compressed)
    
# 回転して縦横が入れ替わったので、同じように全てが"."の行を削除する
    compressed = compress(transposed)

# 再度縦横を入れ替えてもとに戻す
    result = transpose(compressed)

# リストの各要素を出力する
    [print(x) for x in result]

if __name__ == '__main__':
    main()
