#import <UIKit/UIKit.h>

%hook NCMaterialSettings
- (void)setCcWhiteOverlayAlpha:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setCutOutOverlayAlpha:(double)arg1 {
    arg1 = 0.1;
    %orig;
}
%end

%hook NCMaterialSettings
- (void)setCutOutOverlayWhite:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook MTMaterialSettings
- (void)setCcWhiteOverlayAlpha:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook MTMaterialSettings
- (void)setCutOutOverlayAlpha:(double)arg1 {
    arg1 = 0.1;
    %orig;
}
%end

%hook MTMaterialSettings
- (void)setCutOutOverlayWhite:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

