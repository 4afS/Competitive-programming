import sys
sys.setrecursionlimit(100000)
 
def compress(a):
    return [l for l in a if any(map(lambda x: x=='#', l))]

def transpose(a):
    return [''.join(list(map(lambda x: x[0], a)))] + transpose(list(map(lambda x: x[1:], a))) if len(a[0]) > 0 else []

h, w = map(int, input().split())
a = [input() for i in range(h)]

result = transpose(compress(transpose(compress(a))))
[print(x) for x in result]
