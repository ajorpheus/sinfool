#import <UIKit/UIKit.h>

%hook CKDetailsContactsManager
- (bool)_isFaceTimeAudioAvailable {
    return 0;
}
%end

