import sys
sys.setrecursionlimit(100000)
 
def delete_dot_rows(a):
    del_index = []
    for i in range(len(a)):
        if all(map(lambda x: x=='.', a[i])):
            del_index.append(i)

    for i in del_index[::-1]:
        del a[i]

    return a

def flip(a):
    if len(a[0]) == 1:
        return [''.join(list(map(lambda x: x[0], a)))]

    else:
        return [''.join(list(map(lambda x: x[0], a)))] + flip(list(map(lambda x: x[1:], a)))

def main():
    h, w = map(int, input().split())
    a = [input() for i in range(h)]

    deleted_rows = delete_dot_rows(a)
    flipped = flip(deleted_rows)
    deleted_rows_and_colums = delete_dot_rows(flipped)
    result = flip(deleted_rows_and_colums)

    [print(x) for x in result]

if __name__ == '__main__':
    main()


