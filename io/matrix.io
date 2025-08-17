// This enables square bracket syntax somehow...
Object squareBrackets := Object getSlot("list")

sumMatrix := method(myArray, 
    sum := 0
    for(i, 0, myArray size -1, 
        row := myArray at(i)
        for(j, 0, row size -1, 
            sum := sum + ( row at(j) )
        )
    )

    return sum
)

writeln("sum: ", sumMatrix(list(list(1,2,3))))
writeln("sum: ", sumMatrix([[1,2,3], [4,5,6]]))