//
//  Person.h
//  Bedu
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (assign) int age;
@property (nonatomic, strong) NSString *name;

-(void) printName;
-(void) getAge;

@end



