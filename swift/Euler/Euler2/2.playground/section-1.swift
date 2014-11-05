import Cocoa

/*
Calculate the sum of even-valued fibonacci numbers
less than 4 million.
*/

var str = "Hello, playground"

func nextFibo(values : (Int, Int, Int)) -> (Int, Int, Int) {
    let (nMinusTwo, nMinusOne, n) = values
    return (nMinusOne, n, nMinusOne + n)
}

var fibo = nextFibo((0, 0, 1))

var sum = 0
while (fibo.2 < 4000000) {
    fibo = nextFibo(fibo)
    if fibo.2 % 2 == 0 {
        sum += fibo.2
    }
}

sum