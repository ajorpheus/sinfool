#import <UIKit/UIKit.h>

%hook CCUIImmediateTouchScrollView
- (bool)_getPagingDecelerationOffset:(CGPoint*)arg1 forTimeInterval:(double)arg2 {
    arg2 = 400;
    return %orig;
}
%end

