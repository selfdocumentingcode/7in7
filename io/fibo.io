fib := method(n, 
    if(n <= 0, return 0)
    if(n==1 or n==2, return 1)

    nums := list(1,1)

    for(i, 2, n-1,
        nums push((nums at(i-2)) + (nums at(i-1)))
    )

    return nums at ( nums size-1 )
)

for(i, 0, 42, 
    writeln("fib(", i, "): ", fib(i))
)