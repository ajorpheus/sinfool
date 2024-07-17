#import <UIKit/UIKit.h>

%hook SBCoverSheetTransitionSettings
- (void)setBlursPanel:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SBCoverSheetTransitionSettings
- (void)setFadePanelWallpaper:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SBCoverSheetTransitionSettings
- (void)setFadesContent:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

