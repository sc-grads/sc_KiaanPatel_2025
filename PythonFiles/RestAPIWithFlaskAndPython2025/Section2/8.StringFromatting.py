name = "Bob"
greeting = "Hello, Bob"
greeting2 = f"Hello {name}" #f string allows you to embed variables into the string. But if we define name after the f-string, that other name value will not be shown on output as the inital vaule is embedded in this f-string.

print(greeting)
print(greeting2)

name = "Rolf"

print(greeting)

greeting = f"Hello, {name}"
print(greeting)

# --

name = "Anne"
print(
    greeting
)  # This still prints "Hello, Rolf" because `greeting` was calculated earlier.
print(
    f"Hello, {name}"
)  # This is correct, since it uses `name` at the current point in time.

# -- Using .format() --

# We can define template strings and then replace parts of it with another value, instead of doing it directly in the string.

greeting = "Hello, {}"
with_name = greeting.format("Rolf") #can use this when we hav multiple values we want to ouput or show
print(with_name)

longer_phrase = "Hello, {}. Today is {}."
formatted = longer_phrase.format("Rolf", "Monday")
print(formatted)