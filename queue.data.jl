# wip

first = missing

struct Item
    val
    next::Item
end

function add(val)
    item = Item(val, missing)

    pointer = first
    while pointer !== missing && pointer.next !== missing
        pointer = pointer.next
    end
    pointer.next = item
end

function print()
    pointer = first
    while pointer !== missing && pointer.next !== missing
        println("Found: $(pointer.val)")
        pointer = pointer.next
    end
end

add("Buddy")
add("Williams")
add("works")
add("at")
add("home.")

print()