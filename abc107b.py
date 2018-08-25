import sys
sys.setrecursionlimit(100000)
 
def compress(a):
    del_index = []
    for i in range(len(a)):
        if all(map(lambda x: x=='.', a[i])):
            del_index.append(i)

    for i in del_index[::-1]:
        del a[i]

    return a

def transpose(a):
    if len(a[0]) == 1:
        return [''.join(list(map(lambda x: x[0], a)))]

    else:
        return [''.join(list(map(lambda x: x[0], a)))] + transpose(list(map(lambda x: x[1:], a)))

def main():
    h, w = map(int, input().split())
    a = [input() for i in range(h)]

    result = transpose(compress(transpose(compress(a))))
    [print(x) for x in result]

if __name__ == '__main__':
    main()
