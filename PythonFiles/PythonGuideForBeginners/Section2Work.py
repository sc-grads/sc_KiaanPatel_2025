#using variables
print("Hello" + " Kiaan!")
name = "Kiaan"
print("Hello " + name)

#Constants in python: 1 issue is that in python we have no real way for defining a constant, their values can be changed, example:
PI = 3.1415
print(PI)
PI = 4
print(PI)

#Data types
#Numeric types:
number = -100 #integer
percent = 1.50 #float
imaginary = 9j #imaginary number

#Boolean types
hasMoney = True
noMoney = False

#String types
text = "Hello bob"

#Sequence Types
numbers = [1, 2, 3] #list
coordinates = (2.5, 1.0) #tuple (difference between list and tuple is that in a list you can add elements to it and remove, in a tuple you can, when you create a tuple, whatever it has within it cannot be changed)

#Mapping types
users = {'Mario': 1, 'Luigi': 2} #dictionary

#Set Types
raffle = {1, 2, 10, 25} #can be modified
frozen = frozenset({1, 2, 3}) #can't be modified, it's frozen

#Types
number = 10
print(number)
print(type(number))

number = "10"
print(number)
print(type(number))

#now when we do the below, it helps us keep the variable as its dedicated type when we try to change the value as an error will be thrown
number: int = 10
print(number) #note that it deosnt really work as this is jmore for the developer to see and python will still work, look at the below:

number: str = 10
print(number)

#Integers
age: int = 30 
a: int = 5
b: int = 10
print(a + b)
print(a - b)

#Floats(contain decimals, but integers can also be floats)
PI: float = 3.1415
a: float = 0.5
b: float = 2.5
print(a + b)

#Operators (Part1)

a: int = 2
b: int = 4

print(a + b)
print(a - b)
print(a * b)
print(a / b)

#floor division (returns whole number, eithe rroun dup or down)
print (a // b)

#to the power operator
print(a ** b)

#modulus operator
print(3 % 2) #gives you the remainder of the division

#Assignment operator
x: int = 2
x = x + 2
print(x)
x += 2
print(x) # does the same as x = x + 2, just less code. Can alos use  -=, *=, /=, //=, **=, %=

#Operators (Part 2)
#Comparison Operator(>, < !=, ==, >=, <=)
a : int = 1
b: int = 5
c: int = 10
d: int = 10

print(a == b)
print(a != b)
print(c == d)
print(a > b)
print(a < b)
print(a >= b)
print(b <= a)
print(c >= d)
print(c <= d)

#Operators(Part3)
#Logical operators
a : int = 1
b: int = 5
c: int = 10
d: int = 10

print(c == d and b > a) #and checks if both expressions are true and outputs true
print(c == d or a > b) #or checks if 1 of the 2 or both of the expressions are true, if 1 is true then outputs true, else if both false ill output false
print(not(a > b)) #not makes sure an expression is basically the opposite, so a > b, when using the not operator it will just evaluate if a is not > b and then oput true as a is not > b
print(a != b) #similar if not exact same functionality of not

#Strings
name: str = 'Mario'
fruit: str = "Banana" #python is not sensitive with what quotation marks you use
#if you want to use quotation amrks within quotation marks, do this:
name: str = "Kiaan \"Patel\""

#can also concatenate strings together
#using """ """ or ''' ''' allows you to add multiple lines of text with it keeping its order


#Type Conversion
txt_value: str = "100"
int_value: int = 50

print(int(txt_value) + int_value) # wont work as txt_value is a string, so what we do we cast txt_value as an integer


#SImple Adder Project
print("Welcom to your SImple Adder")
print("---------------------------")

a: str = input("Enter a value for a: ")
b: str = input("Enter a value for b: ")
print("---------------------------")
print("The result is: ", int(a) + int(b))

#Boolean
is_connected = True
has_money = False

#Lists
myList: list = [1, True, 'text', [1, 2, 3]]

people: list[str] = ['Bob', 'James', 'Tom']
print(people[0]) #retrieve Bob as he is the 1st person in lsit
print('Original', people)
#append
people.append('Jeremy')
print(people)
#remove
people.remove('Bob')
print(people)
#pop method
people.pop()
print(people)
#change
people[0] = 'Charlotte'
print(people)
#insert
people.insert(1, 'Tomothy')
print(people)
#clear
people.clear()
print(people)

#tuples (can't be modified once created) also the commas make the tuple not the parenthesis
items: tuple = (1, True, 'text')
coordinates: tuple[float, float] = 1.5, 2.5

#sets
elements: set = {99, True, 'Bob'}
print(elements)
#add elements
elements.add('James')
#remove elements
elements.remove('Bob')
#pop
elements.pop()
#clear
elements.clear()

#to create empty set, we do this:
empty: set = set()
#we also cannot index sets

#frozensets(can't be modified after creation)
things: frozenset = frozenset({1, 1, 2, 3})
print(things)

#Dictionaries
users: dict = {'Bob': 1, 'James': 2}
empty: dict = {}

#retrieve elements
weather: dict = {'time': '12:00'
                 , 'weather': {'morning': 'rain',
                               'evening': 'more rain'}
                 }
print(weather['time'])