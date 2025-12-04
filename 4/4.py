def caf(fn="input"):
    with open(fn, "r") as f:
        g = [list(l.rstrip("\n"))for l in f if l.strip()]
    return ca(g)

def ca(g):
    ng = [r[:] for r in g]
    R = len(g); C = len(g[0])
    dirs = [
        (-1, -1), (-1, 0), (-1, 1),
        (0, -1),           (0, 1),
        (1, -1),  (1, 0),  (1, 1),
    ]
    c = 0
    for i in range(R):
        for j in range(C):
            if g[i][j] != '@': continue
            adj = 0
            for di, dj in dirs:
                ni, nj = i + di, j + dj
                if 0 <= ni < R and 0 <= nj < C and g[ni][nj] == '@':
                    adj += 1
                    if adj >= 4: break
            else:
                ng[i][j] = '.'
                c += 1

    return c # PART 2: and c+ca(ng)

if __name__ == "__main__":
    print(caf())
