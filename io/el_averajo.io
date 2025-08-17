List myAverage := method(
    nums := self
    if(nums size <= 0, return 0)

    sum := 0

    for(i, 0, nums size -1, 
        if(nums at(i) asNumber isNan, Exception raise("nums contains non-numbers"))

        sum := sum + nums at(i)
    )

    return sum / nums size
)

list(1,2,3,10,42,55) myAverage println
list(1,2,3,"hmm",42,55) myAverage println