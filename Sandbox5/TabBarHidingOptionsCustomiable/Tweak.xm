#import <UIKit/UIKit.h>

%hook UITabBar
- (bool)_backgroundNeedsUpdate {
    // Background:  Hide=FALSE, Show=TRUE
    return 0;
}
%end

%hook UITabBarButton
- (id)initWithImage:(id)arg1 selectedImage:(id)arg2 label:(id)arg3 withInsets:(UIEdgeInsets)arg4 {
    // Images / Labels:	(Arg#1): Images (Arg#3): Labels  [Hide=NULL, Show=pass-through]
    arg3 = NULL;
    return %orig;
}
%end

