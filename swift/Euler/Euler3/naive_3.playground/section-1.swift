import UIKit

/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/


struct Set<T: Hashable> {
    typealias Element = T
    private var contents: [Element: Bool]

    init() {
        self.contents = [Element: Bool]()
    }

    /// The number of elements in the Set.
    var count: Int { return contents.count }

    /// Returns `true` if the Set is empty.
    var isEmpty: Bool { return contents.isEmpty }

    /// The elements of the Set as an array.
    var elements: [Element] { return Array(self.contents.keys) }

    /// Returns `true` if the Set contains `element`.
    func contains(element: Element) -> Bool {
        return contents[element] ?? false
    }

    /// Add `newElements` to the Set.
    mutating func add(newElements: Element...) {
        newElements.map { self.contents[$0] = true }
    }

    /// Remove `element` from the Set.
    mutating func remove(element: Element) -> Element? {
        return contents.removeValueForKey(element) != nil ? element : nil
    }
}

var targetPrime = 600851475143;

var primes = Set<Int>();
var nonPrimes = Set<Int>();
primes.add(2);

var nextCandidate = 3;
var maxPrimeDivisor = Int(sqrt(Double(targetPrime)));
for (; nextCandidate < maxPrimeDivisor; nextCandidate += 2) {
    if nonPrimes.contains(nextCandidate) {
        continue;
    }
    primes.add(nextCandidate);

    for (var multiplier = 2; multiplier * nextCandidate < maxPrimeDivisor; multiplier += 1) {
        multiplier * nextCandidate;
        nonPrimes.add(multiplier * nextCandidate);
    }
}

var elements = primes.elements
sort(&elements) { $0 < $1 }
elements

var divisors = [Int]()
for prime in primes.elements {
    if targetPrime % prime == 0 {
        divisors.append(prime);
    }
}

sort(&divisors);
divisors