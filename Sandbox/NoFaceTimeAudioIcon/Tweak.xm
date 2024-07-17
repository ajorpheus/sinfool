#import <UIKit/UIKit.h>

%hook CNCapabilitiesManager
- (bool)isFaceTimeAudioAvailable {
    return 0;
}
%end

