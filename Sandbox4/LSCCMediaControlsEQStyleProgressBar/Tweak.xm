#import <UIKit/UIKit.h>

%hook MPUChronologicalProgressView
- (void)setSubstyle:(long long)arg1 {
    arg1 = 1;
    %orig;
}
%end

