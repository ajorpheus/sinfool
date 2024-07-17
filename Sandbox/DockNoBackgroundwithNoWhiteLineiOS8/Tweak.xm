#import <UIKit/UIKit.h>

%hook SBDockView
- (void)setBackgroundAlpha:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SBHighlightView
- (id)initWithFrame:(CGRect)arg1 highlightAlpha:(double)arg2 highlightHeight:(double)arg3 {
    return NULL;
}
%end

