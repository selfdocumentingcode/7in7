fibRec := method(i, n, a, b,
    c := a + b
    if(i == n, return c)

    return fibRec(i+1, n, b, c)
)
fib := method(n, 
    if(n <= 0, return 0)
    if(n==1 or n==2, return 1)

    fibRec(3, n, 1, 1)
)

for(i, 0, 42, 
    writeln("fib(", i, "): ", fib(i))
)