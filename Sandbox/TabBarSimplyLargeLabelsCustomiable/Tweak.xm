#import <UIKit/UIKit.h>

%hook UITabBarButtonLabel
- (id)_fontForIdiom:(long long)arg1 {
    // Tab Bar - Label Font: (Stock=P, Large=2, Bold=3)
    arg1 = 2;
    return %orig;
}
%end

%hook UITabBarButton
- (id)initWithImage:(id)arg1 selectedImage:(id)arg2 label:(id)arg3 withInsets:(UIEdgeInsets)arg4 tabBar:(id)arg5 {
    // Tab Bar - Image:(Arg#1), Label:(Arg#3): (Hide=N)
    arg1 = NULL;
    return %orig;
}
%end

