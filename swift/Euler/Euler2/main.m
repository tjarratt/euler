#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int prevPrevFibo = 1;
        int previousFibo = 1;
        int currentFibo = 0;
        int sum = 0;

        while (currentFibo < 4000000) {
            currentFibo = previousFibo + prevPrevFibo;

            if (currentFibo % 2 == 0) {
                sum += currentFibo;
            }

            prevPrevFibo = previousFibo;
            previousFibo = currentFibo;
        }

        NSLog(@"first fibo greater than 4 million is %d", currentFibo);
        NSLog(@"sum of all even-valued terms is %d", sum);
    }
    return 0;
}
