TheMatrix := Object clone do(
    init := method(
        values ::= list()
        sizeX ::= 0
        sizeY ::= 0
    )

    dim := method(x,y,
        sizeX = x
        sizeY = y

        values empty

        for(i, 0, y-1, values push(list() setSize(x)))

        return self
    )

    set := method(x,y, value, values at(y) atPut(x, value); return self)

    get := method(x,y, return values at(y) at(x))

    print := method(
        for(i, 0, sizeY-1, 
            row := values at(i)
            for(j, 0, sizeX-1, 
                write(row at(j), " ")
            )
            if(i < sizeY-1, writeln)
        )
    )

    println := method(self print; writeln)

    transpose := method(
        tMatrix := TheMatrix clone dim(sizeY, sizeX)

        for(i, 0, sizeY-1, 
            for(j, 0, sizeX-1, 
                tMatrix set(i,j,get(j,i))
            )
        )
    )
)


// TheMatrix slotSummary println
// TheMatrix uniqueId println

myMatrix := TheMatrix clone dim(3,4)

// myMatrix slotSummary println
// myMatrix uniqueId println

myMatrix set(1,0,"a") set(2,1, "b")
myMatrix get(1,0) println
myMatrix println

writeln
transMatrix := myMatrix transpose
transMatrix println

writeln(myMatrix get(1,0) == transMatrix get(0,1))
writeln(myMatrix get(2,1) == transMatrix get(1,2))