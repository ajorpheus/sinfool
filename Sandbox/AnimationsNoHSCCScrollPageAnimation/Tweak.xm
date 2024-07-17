#import <UIKit/UIKit.h>

%hook UIScrollView
- (bool)_getPagingDecelerationOffset:(CGPoint*)arg1 forTimeInterval:(double)arg2 {
    arg2 = 15;
    return %orig;
}
%end

