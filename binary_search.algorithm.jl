function simple_search(val::Int64, arr::Array{Int64})
    steps = 0
    for i = 1:length(arr)
        steps += 1
        if arr[i] == val
            return i, steps
        end
    end
    return nothing, steps
end

function binary_search(val::Int64, arr::Array{Int64})
    steps = 0
    low = 1
    high = length(arr)

    while low <= high
        steps += 1
        mid::Int64 = round((low + high) / 2)

        if arr[mid] == val
            return mid, steps
        elseif arr[mid] < val
            low = mid + 1
        else
            high = mid - 1
        end
    end

    return nothing, steps
end

# Julia array indexes begin at 1, not 0
MAX = 100000000
arr = collect(1:MAX)
val = rand(1:MAX)

result, steps = simple_search(val, arr)
println("Simple search: val $val at index $result with $steps steps")

result, steps = binary_search(val, arr)
println("Binary search: val $val at index $result with $steps steps")