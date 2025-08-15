unless := method(
    (call sender doMessage(call message argAt(0))) ifFalse(
    call sender doMessage(call message argAt(1))) ifTrue(
    call sender doMessage(call message argAt(2)))
)

unless(1 == 2, write("One is not two\n"), write("One is two\n"))

writeln("---")

westley := Object clone do(
    trueLove := true
    declareLove := method(princessButtercup unless(trueLove, ("The love is false" println), ("The love is true" println)))
)

princessButtercup := Object clone 

westley declareLove
