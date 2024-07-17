#import <UIKit/UIKit.h>

%hook SBHighlightView
- (id)initWithFrame:(CGRect)arg1 highlightAlpha:(double)arg2 highlightHeight:(double)arg3 {
    // •
    return NULL;
}
%end

%hook SBChevronView
- (id)initWithFrame:(CGRect)arg1 {
    // Grabbers:  Hide=NULL, Show=pass-through
    return NULL;
}
%end

