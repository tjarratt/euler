/*
Euler 1

Multiples of 3 and 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*/

var sum: Int
sum = 0
for n in 1..1000 {
    if n % 3 == 0 || n % 5 == 0 {
        sum += n
    }
}

sum

sum = 0
for var n = 3; n < 1000; n += 2 {
    if n % 3 == 0 || n % 5 == 0 {
        sum += n
    }

    n += 2
}
sum