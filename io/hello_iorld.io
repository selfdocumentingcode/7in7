"Hello iorld!" println

dog := Object clone
dog color ::= "brown"

// dog color println

dog setColor("red")

// dog color println

OperatorTable addOperator("yeet", 3)
Number yeet := method(a, self - a)

// myVar := (70 yeet 10)
// myVar println

"Value of false:" println
false println
"Type of false:" println
false type println

OperatorTable addOperator("xor", 11)
// true xor := method(bool, if(bool, false, true))
true xor := method(bool, 
    "xor called with:" println
    bool println
    "Type of argument:" println
    bool type println
    if(bool, false, true)
)
false xor := method(bool, if(bool, true, false))

// true xor(false) println
// (true hasSlot("xor")) println
myRes := (true xor false)
myRes println

myRes2 := true xor(false)
myRes2 println
