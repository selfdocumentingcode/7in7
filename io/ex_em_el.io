Builder := Object clone do ( 
    currLevel ::= 0
    
    forward := method(
        writeIndented(currLevel, "<", call message name, ">")

        currLevel = currLevel + 1

        call message arguments foreach(
                arg, 
                content := self doMessage(arg);
                if(content type == "Sequence", writeIndented(currLevel, content)))

        currLevel = currLevel - 1

        writeIndented(currLevel, "</", call message name, ">")

    )

    writeIndented := method(level,  
        for(i, 0, level - 1, write("  "))

        callArgs := call message argsEvaluatedIn(call sender) rest

        callArgs foreach(arg, write(arg))

        writeln("")
    )
 )

Builder ul( 
    li("Io"),
    li("Lua"),
    li("JavaScript")
)
