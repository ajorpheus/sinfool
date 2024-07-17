#import <UIKit/UIKit.h>

%hook AlternativeRoutesVC
- (void)setCurrentViewType:(unsigned long long)arg1 {
    arg1 = 1;
    %orig;
}
%end

