mySet = set()
for i in range(2, 101):
    for j in range(2, 101):
        mySet.add(i ** j)


print(len(mySet)) # 9183
