#import <UIKit/UIKit.h>

%hook UIStatusBarForegroundStyleAttributes
- (id)initWithHeight:(double)arg1 legibilityStyle:(long long)arg2 tintColor:(id)arg3 hasBusyBackground:(bool)arg4 idiom:(long long)arg5 {
    // Foreground: (Return Value) Show=pass-through, Hide=NULL
    return NULL;
}
%end
