#import <UIKit/UIKit.h>

%hook PhoneTabBarController
- (void)showFavoritesTab:(bool)arg1 recentsTab:(bool)arg2 contactsTab:(bool)arg3 keypadTab:(bool)arg4 voicemailTab:(bool)arg5 {
    // •
    arg1 = 1;
    arg2 = 0;
    arg3 = 0;
    arg4 = 0;
    arg5 = 0;
    %orig;
}
%end

%hook PhoneTabBarController
- (int)defaultTabViewType {
    // •
    return 1;
}
%end

%hook ABContactViewController
- (bool)allowsSendMessage {
    // •
    return 0;
}
%end

%hook ABContactViewController
- (bool)allowsSharing {
    // •
    return 0;
}
%end

%hook ABContactViewController
- (bool)allowsContactBlocking {
    // •
    return 0;
}
%end

%hook PHFavoritesViewController
- (bool)tableView:(id)arg1 canEditRowAtIndexPath:(id)arg2 {
    // •
    return 0;
}
%end

