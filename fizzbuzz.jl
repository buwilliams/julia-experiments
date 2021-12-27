# Write a program that prints the numbers from 1 to 100. But for multiples of three 
# print “Fizz” instead of the number and for the multiples of five print “Buzz”. For 
# numbers which are multiples of both three and five print “FizzBuzz”.

# Solution 1
function fizz_buzz_long(i)
    for n in 1:i
        if n % 15 == 0
            println("FizzBuzz")
        elseif n % 3 == 0
            println("Fizz")
        elseif n % 5 == 0
            println("Buzz")
        else
            println(n)
        end
    end
end


# Solution 2 (dry)
function fizz_buzz_short(i)
    for i in 1:i
        msg = "Fizz" ^ (i % 3 == 0) * "Buzz" ^ (i % 5 == 0)
        println(isempty(msg) ? i : msg)
    end
end

#fizz_buzz_long(100)
fizz_buzz_short(100)