#import <UIKit/UIKit.h>

%hook SBCenterIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    // LS to HS - (Icon Zoom) via Slide To Unlock
    return 0;
}
%end

%hook SBCenterAppIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    // LS to HS - (Icon Zoom) via Touch ID/Passcode
    return 0;
}
%end

%hook SBUIAnimationLockScreenToAppZoomIn
- (id)initWithTransitionContextProvider:(id)arg1 {
    // LS to App - Zoom
    return NULL;
}
%end

%hook SBUIAnimationZoomUpApp
- (id)initWithTransitionContextProvider:(id)arg1 {
    // HS to App - Zoom
    return NULL;
}
%end

%hook SBFolderIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    // HS to Folder - (Icon Zoom)
    return 0;
}
%end

%hook SBRootAnimationSettings
- (id)folderOpenSettings {
    // HS to Folder - Open Zoom	*[MUST USE w/ "HS to Folder - (Icon Zoom)"]
    return NULL;
}
%end

%hook SBRootAnimationSettings
- (id)folderCloseSettings {
    // Folder to HS - Close Zoom  *[MUST USE w/ "HS to Folder - (Icon Zoom)"]
    return NULL;
}
%end

%hook SBUIAnimationZoomDownApp
- (id)initWithTransitionContextProvider:(id)arg1 {
    // App to HS - Zoom
    return NULL;
}
%end

%hook SBUIAnimationDosidoTransitionController
- (id)_animationFactory {
    // App to App - Slide Animation (Breadcrumb/"Back to App"/LastApp)
    return NULL;
}
%end

%hook SBUIDismissSwitcherAnimationController
- (id)initWithTransitionContextProvider:(id)arg1 activatingDisplayItem:(id)arg2 interactive:(bool)arg3 {
    // Switcher - Dismiss/Zoom Down
    return NULL;
}
%end

