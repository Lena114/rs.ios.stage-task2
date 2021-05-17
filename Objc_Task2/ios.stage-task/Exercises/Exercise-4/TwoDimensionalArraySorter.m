#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if([array count] == 0 || array == nil || ![array[0] isKindOfClass:[NSArray class]]){
        return @[];
    }
    
    NSMutableArray *numbers = [NSMutableArray arrayWithArray:@[]];
    NSMutableArray *strings = [NSMutableArray arrayWithArray:@[]];
    
    for (id item in array) {
        for (id el in item) {
            if ([item isKindOfClass:NSString.class]) [strings addObject:el];
            else [numbers addObject:el];
        }
    }
    
    [numbers sortUsingSelector:@selector(compare:)];
    [strings sortUsingSelector:@selector(compare:)];
    
    if (numbers.count == 0) return strings;
    if (strings.count == 0) return numbers;
        
    return [NSArray arrayWithObjects: numbers, strings, nil];
}

@end
