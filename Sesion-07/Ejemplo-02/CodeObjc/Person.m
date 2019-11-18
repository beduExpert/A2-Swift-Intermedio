//
//  Person.m
//  Bedu
//


#import "Person.h"

@implementation Person

-(id) initWithAge: (int) age andName: (NSString *) name {
  self = [super init];
  if (self) {
    self.age = age;
    self.name = name;
  }
  return self;
}

-(void) printName {
  NSLog(@"Name = %@", self.name);
}

-(void) getAge {
  NSLog(@"Age = %d", self.age);
}

@end



