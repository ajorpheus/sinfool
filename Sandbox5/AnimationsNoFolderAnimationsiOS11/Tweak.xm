#import <UIKit/UIKit.h>

%hook SBIconController
- (void)openFolderIcon:(id)arg1 animated:(bool)arg2 withCompletion:(id)arg3 {
    arg2 = 0;
    %orig;
}
%end

%hook SBIconController
- (void)closeFolderAnimated:(bool)arg1 withCompletion:(id)arg2 {
    arg1 = 0;
    %orig;
}
%end

%hook SBFloatingDockViewController
- (id)folderPresentationController:(id)arg1 animationControllerForTransitionWithFolder:(id)arg2 presenting:(bool)arg3 animated:(bool)arg4 {
    arg4 = 0;
    return %orig;
}
%end

%hook SBFloatingDockRootViewController
- (void)_setPresentedProgress:(double)arg1 animated:(bool)arg2 interactive:(bool)arg3 completion:(id)arg4 {
    arg2 = 0;
    %orig;
}
%end

