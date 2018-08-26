def compress(a):
    return [l for l in a if any(map(lambda x: x=='#', l))]

def transpose(a):
    return [''.join(list(l)) for l in zip(*a)]

def main():
    h, w = map(int, input().split())
    a = [input() for i in range(h)]
    result = transpose(compress(transpose(compress(a))))
    [print(x) for x in result]

if __name__ == '__main__':
    main()
