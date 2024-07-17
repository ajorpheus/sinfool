#import <UIKit/UIKit.h>

%hook FCOrientationLocker
- (long long)preferredOrientation {
    // Set Preferred Orientation:  (Portrait=1, Upside Down=2, Landscape Left=3, Landscape Right=4)
    return 3;
}
%end

%hook FCOrientationLocker
- (bool)orientationLocked {
    // •
    return 1;
}
%end

