#import <UIKit/UIKit.h>

%hook SBIconScrollView
- (bool)_getPagingDecelerationOffset:(CGPoint*)arg1 forTimeInterval:(double)arg2 {
    arg2 = 400;
    return %orig;
}
%end

