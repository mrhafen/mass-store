def bubbleSort(elements) :
    length = len(elements)
    for i in range(1, length) :
        for j in range(0, length - i) :
            if elements[j] > elements[j + 1] :
                temp = elements[j]
                elements[j] = elements[j + 1]
                elements[j + 1] = temp

elements = []
num = input("please input numbers you want to sort('q' to end) :")
while num != 'q' :
    elements.append(int(num))
    num = input("please input numbers you want to sort('q' to end) :")
bubbleSort(elements)
for e in elements :
    print(e, end = ' ')
print('')
