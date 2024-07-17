#import <UIKit/UIKit.h>

%hook SBDockView
- (id)_newBackgroundImage {
    return NULL;
}
%end

%hook SBDockView
- (void)setBackgroundAlpha:(float)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SBHighlightView
- (id)initWithFrame:(CGRect)arg1 highlightAlpha:(float)arg2 highlightHeight:(float)arg3 {
    return NULL;
}
%end

