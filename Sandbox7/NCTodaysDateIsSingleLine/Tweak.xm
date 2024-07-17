#import <UIKit/UIKit.h>

%hook SBSearchEtceteraDateViewController
- (void)setUseMultiLineDate:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

