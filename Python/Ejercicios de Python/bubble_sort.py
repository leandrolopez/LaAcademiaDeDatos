

def bubbleSort(nlist):
    for passnum in range(len(nlist)-1,0,-1):
        for i in range(passnum):
            if nlist[i] > nlist[i+1]:
                temp = nlist[i]
                nlist[i] = nlist[i+1]
                nlist[i+1] = temp


nlist = [80, 1007, 13,16,53,71,42,61,45,20,70]

bubbleSort(nlist)

print(nlist)