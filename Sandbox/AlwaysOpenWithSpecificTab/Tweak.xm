#import <UIKit/UIKit.h>

%hook PhoneTabBarController
- (void)switchToTab:(int)arg1 {
    // Set Tab To Open With...  {1=Favorites, 2=Recents, 3=Contacts, 4=Keypad, 5=Voicemail}
    arg1 = 2;
    %orig;
}
%end

