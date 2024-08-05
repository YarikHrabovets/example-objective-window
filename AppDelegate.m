#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Create the window
    NSRect frame = NSMakeRect(0, 0, 300, 300);
    NSUInteger style = NSWindowStyleMaskBorderless;
    
    self.window = [[NSWindow alloc] initWithContentRect:frame
                                               styleMask:style
                                                 backing:NSBackingStoreBuffered
                                                   defer:NO];
    
    // Set window level to normal
    [self.window setLevel:NSStatusWindowLevel];
    
    // Set the window to be transparent
    [self.window setOpaque:NO];
    [self.window setBackgroundColor:[NSColor clearColor]];
    
    // Disable window resizing and full-screen button
    [self.window setCollectionBehavior:NSWindowCollectionBehaviorFullScreenNone];

    // Position the window in the bottom-left corner
    NSScreen *mainScreen = [NSScreen mainScreen];
    NSRect screenRect = [mainScreen frame];
    NSPoint bottomLeft = NSMakePoint(0, 0);
    [self.window setFrameOrigin:bottomLeft];

    [self.window makeKeyAndOrderFront:nil];
    
    // Create and configure the image view
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"owo-what" ofType:@"gif" inDirectory:@"assets"];
    NSImage *image = [[NSImage alloc] initWithContentsOfFile:imagePath];
    
    if (image) {
        self.imageView = [[NSImageView alloc] initWithFrame:NSMakeRect(0, 0, image.size.width, image.size.height)];
        [self.imageView setImage:image];
        [self.imageView setWantsLayer:YES];
        self.imageView.layer.masksToBounds = YES;
        
        // Add the image view to the window's content view
        [[self.window contentView] addSubview:self.imageView];
        
        // Position the image view in the bottom-left corner
        [self.imageView setFrameOrigin:NSMakePoint(0, 0)];
    } else {
        NSLog(@"Failed to load image");
    }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    self.window = nil;
}

@end