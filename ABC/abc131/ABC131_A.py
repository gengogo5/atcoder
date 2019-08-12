S = input()
difficult = False

for i in range(3):
    if S[i] == S[i+1]:
        difficult = True
        break

if difficult:
    print('Bad')
else:
    print('Good')
