#import <UIKit/UIKit.h>

%hook UIAlertController
- (long long)preferredStyle {
    // •
    return 1;
}
%end

%hook UIAlertController
- (id)visualStyleForAlertControllerStyle:(long long)arg1 traitCollection:(id)arg2 descriptor:(id)arg3 {
    // (Arg#1): Larger=0
    arg1 = 1;
    return %orig;
}
%end

