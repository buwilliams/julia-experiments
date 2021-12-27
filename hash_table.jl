function hash(str)
    out = 0
    for c in 1:length(str)
        out += Int(str[c]) * c
    end
    out + length(str)
end

function put(key, value, array)
end

function print(key)
    println(key * " = " * string(hash(key) % 10))
end

print("ab")
print("ba")
print("a")
print("b")
print("z")
print("hello")
print("ehllo")
print("elhlo")
print("ellho")
print("elloh")
print("really really really long string to see what happens")

put("buddy", 123, [])