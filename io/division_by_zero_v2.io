Number originalDivide := Number getSlot("/")

Number / := method(b, 
    if(b == 0, 0, self originalDivide(b))
)

writeln(4 / 2)
writeln(4 / 0)
writeln(0 / 4)
writeln(0 / 0)