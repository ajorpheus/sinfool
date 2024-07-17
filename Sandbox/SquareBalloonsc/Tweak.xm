#import <UIKit/UIKit.h>

%hook CKBalloonView
- (unsigned long long)balloonCorners {
    return 0;
}
%end

%hook CKUIBehavior
- (double)balloonMaskTailWidth {
    return 0;
}
%end

%hook CKImageBalloonView
- (id)tailMask {
    return NULL;
}
%end

