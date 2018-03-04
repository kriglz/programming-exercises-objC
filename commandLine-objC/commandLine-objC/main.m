//
//  main.m
//  commandLine-objC
//
//  Created by Kristina Gelzinyte on 3/4/18.
//  Copyright © 2018 Kristina Gelzinyte. All rights reserved.
//

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Fraction: NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end

//---- @implementation section ----

@implementation Fraction {
    int numerator;
    int denominator;
}

-(void) print {
    NSLog (@"%i/%i", numerator, denominator);
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

-(void) setNumerator: (int) n {
    numerator = n;
}

-(void) setDenominator: (int) d {
    denominator = d;
}

@end

//---- program section ----

int main (int argc, char * argv[]) {
    
    @autoreleasepool {
        
        // Create an instance of a Fraction
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [Fraction new];
        
        // Set fraction to 1/3
        [frac1 setNumerator: 1];
        [frac1 setDenominator: 3];
        
        // Set fraction to 2/9
        [frac2 setNumerator: 2];
        [frac2 setDenominator: 9];
        
        // Display the fraction using the print method
        NSLog (@"The values are:");
        
        [frac1 print];
        [frac2 print];
        
        NSLog (@"The value of myFraction is: %i/%i", [frac1 numerator], [frac1 denominator]);
    }
    return 0;
}
