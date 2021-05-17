
#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    NSString *hexString = @"";
    NSMutableString *reversedString = [[NSMutableString alloc] init];
    
    
    for (int i = 0; i < 8; i++) {
        hexString = [NSString stringWithFormat:@"%i%@", n & (1<<i) ? 1 : 0, hexString];
        
        
    }

    NSInteger charIndex = [hexString length];
    
    while (charIndex > 0) {
        charIndex --;
        NSRange subStringRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[hexString substringWithRange:subStringRange]];
    }
    
    UInt8 finalNumber = strtol([reversedString UTF8String], nil, 2);
    
    return finalNumber;
}
