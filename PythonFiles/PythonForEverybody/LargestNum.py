arr = [8, 50, 71, 63, 4, 5, 69, 100]
current = 0  # Holds the largest number

for num in arr:
    if num > current:
        current = num  # Update current if num is larger

print("The biggest number in array", arr, "is:", current)


found = False
for num in arr:
    if num == 69:
        found = True
    print(found, num)


current1 = None  # Holds the largest number

for num in arr:
    if current1 == None:
        current1 = num  # Update current if num is larger
    elif num < current1:
        current1 = num

print("The smallest number in array", arr, "is:", current1)