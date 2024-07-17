#import <UIKit/UIKit.h>

%hook SBIcon
- (id)getIconImage:(int)arg1 {
    return NULL;
}
%end

%hook SBClockApplicationIconImageView
- (void)setIcon:(id)arg1 location:(int)arg2 animated:(bool)arg3 {
    arg1 = NULL;
    %orig;
}
%end

%hook SBClockApplicationIconImageView
- (void)_setAnimating:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

