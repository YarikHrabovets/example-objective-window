#include <Cocoa/Cocoa.h>
#import "AppDelegate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create the application instance
        [NSApplication sharedApplication];
        
        // Create the application delegate
        AppDelegate *appDelegate = [[AppDelegate alloc] init];
        [NSApp setDelegate:appDelegate];
        
        // Run the application
        [NSApp run];
    }
    return 0;
}
