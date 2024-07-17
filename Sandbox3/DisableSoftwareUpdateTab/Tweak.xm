#import <UIKit/UIKit.h>

%hook PSUISoftwareUpdateController
- (id)init {
    return NULL;
}
%end

