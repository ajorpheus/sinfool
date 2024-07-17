#import <UIKit/UIKit.h>

%hook SBIconView
- (void)setAllowJitter:(bool)arg1 {
    // ⚠️ Shakes App Opening Animation (DELETE THIS UNIT TO DISABLE)
    arg1 = 1;
    %orig;
}
%end

%hook SBIconController
- (BOOL)isEditing {
    return 1;
}
%end

%hook SBIconController
- (BOOL)allowsUninstall {
    return 0;
}
%end

%hook SBIconView
- (BOOL)allowsTapWhileEditing {
    return 1;
}
%end

%hook SBFolderIconView
- (BOOL)allowsTapWhileEditing {
    return 1;
}
%end

%hook SBFolderTitleTextField
- (void)setShowsEditUI:(BOOL)arg1 animated:(BOOL)arg2 {
    arg1 = 0;
    arg2 = 0;
    %orig;
}
%end

%hook SBFolder
- (bool)canEditDisplayName {
    return 0;
}
%end

%hook SBFolderIcon
- (id)_miniIconGridForPage:(long long)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook SBFolderView
- (bool)setCurrentPageIndex:(long long)arg1 animated:(bool)arg2 {
    return 0;
}
%end

