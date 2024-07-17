#import <UIKit/UIKit.h>

%hook SBHighlightView
- (id)initWithFrame:(CGRect)arg1 highlightAlpha:(float)arg2 highlightHeight:(float)arg3 {
    return NULL;
}
%end

