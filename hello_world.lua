print("Hello World")
print("What is your name?")

local readName = io.read()

local function say_hello(name)
    print('Hello,', name)
end

local function factorial(n)
    if n == 0 then
        return 1
    end

    return n * factorial(n - 1)
end

say_hello(readName)
print(factorial(3))
