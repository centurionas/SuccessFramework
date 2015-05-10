//
//  GMObserverList.m
//  _BusinessApp_
//
//  Created by Gytenis Mikulėnas on 1/13/14.
//  Copyright (c) 2014 Gytenis Mikulėnas. All rights reserved.
//

#import "GMObserverList.h"

// For supressing "PerformSelector may cause a leak because its selector is unknown"
// See: http://stackoverflow.com/questions/7017281/performselector-may-cause-a-leak-because-its-selector-is-unknown
#define SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

@interface GMObserverList () {
    
    // Observed subject:
    __weak id _observedSubject;
    
    // Observers:
    NSMutableArray *_observers;
}

@end

@implementation GMObserverList

@synthesize observedSubject=_observedSubject;
@synthesize observers=_observers;

- (id)initWithObservedSubject:(id)observedSubject {
    
    self = [self init];
    if (self) {
        
        // Do not retain observed subject (in order to prevent retain cycle)!
        _observedSubject = observedSubject;
    }
    return self;
}

// Adds observer:
- (void)addObserver:(id)observer {
    
    BOOL contains;
    if (_observers == nil) {
        
        // Create instance of non-retaining array for observers (in order to prevent retain cycles):
        
        _observers = CFBridgingRelease(CFArrayCreateMutable(NULL, 0, NULL)); // Fixing leak in ARC
        //_observers = (__bridge NSMutableArray*)CFArrayCreateMutable(NULL, 0, NULL);
        contains = NO;
    }
    else {
        contains = [_observers containsObject:observer];
    }
    
    // Add if not added yet:
    if (!contains) {
        
        [_observers addObject:observer];
    }
}

// Removes observer:
- (void)removeObserver:(id)observer {
    
    if (_observers == nil)
        return;
    [_observers removeObject:observer];
}

// Determines whether specified observer instance already added
- (BOOL)containsObserver:(id)observer {
    
    if (_observers == nil)
        
        return NO;
    
    return [_observers containsObject:observer];
}

// Generic notification method. Mostly used for list and details models
// Notifies (invokes) all existing observers using the specified abstract selector on them
- (void)notifyObserversForSelector:(SEL)observerSelector{
    
    if (_observers == nil)
        return;
    
    // Assert:
    NSAssert(_observedSubject != nil, @"Can not notify observers in observer list. Observed subject is nil.");
    
    // Iterate observers:
    NSInteger i = [_observers count] - 1;
    while (i >= 0) {
        
        // Check whether observer really conforms to the specified selector:
        id observer = [_observers objectAtIndex:i];
        if ([observer respondsToSelector:observerSelector]) {
            
            // Notify observer:
            SuppressPerformSelectorLeakWarning(
                                               [observer performSelector:observerSelector withObject:_observedSubject];
                                               );
            
        }
        
        // Next:
        i--;
    }
}

// Similar generic notification method but with custom context
- (void)notifyObserversForSelector:(SEL)observerSelector withObject:(id)object
{
    if (_observers == nil)
        return;
    
    // Iterate observers:
    //NSInteger i = [_observers count] - 1;
    //while (i >= 0) {
    NSInteger i = 0;
    while (i < [_observers count]) {
        
        // Check whether observer really conforms to the specified selector:
        id observer = [_observers objectAtIndex:i];
        if ([observer respondsToSelector:observerSelector]) {
            
            // Notify observer:
            SuppressPerformSelectorLeakWarning(
                                               [observer performSelector:observerSelector withObject:object];
                                               );
        }
        
        // Next:
        //i--;
        i++;
        
    }
}

// Similar generic notification method but with custom context
- (void)notifyObserversForSelector:(SEL)observerSelector withObject1:(id)object1 object2:(id)object2
{
    if (_observers == nil)
        return;
    
    // Iterate observers:
    NSInteger i = [_observers count] - 1;
    while (i >= 0) {
        
        // Check whether observer really conforms to the specified selector:
        id observer = [_observers objectAtIndex:i];
        if ([observer respondsToSelector:observerSelector]) {
            
            // Notify observer:
            SuppressPerformSelectorLeakWarning(
                                               [observer performSelector:observerSelector withObject:object1 withObject:object2];
                                               );
        }
        
        // Next:
        i--;
    }
}

@end
