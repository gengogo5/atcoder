S = input()

matched = False
for s in S:
    if S.count(s) != 2:
        matched = True

if matched:
    print('No')
else:
    print('Yes')
