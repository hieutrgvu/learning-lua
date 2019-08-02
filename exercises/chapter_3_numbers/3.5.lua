--[[
Exercise 3.5: The number 12.7 is equal to the fraction 127/10, where the
denominator is a power of ten. Can you express it as a common fraction where
the denominator is a power of two? What about the number 5.5?
--]]

print(
[[Just like some numbers like one third (0.333...) cannot be expressed in the
decimal system with a denominator that is a denominator of ten, some numbers
can't be represented in the binary system.

12.7 is one of these numbers. It can be exactly represented with 127/10, but
not if the denominator has to be a power of two. In this case, the choice of
the denominator determines the accuracy of the representation (if the nominator
is truncated to an integer).

The number 5.5 can be represented with 11/2.
]]
)

function represent(number, tries)
    print("Trying to represent "..number)
    denominator = 1
    for i = 1, tries do
        denominator = 2 * denominator
        print((number*denominator) .. '/' .. denominator)
    end
end

represent(12.7, 3)
represent(5.5, 2)
