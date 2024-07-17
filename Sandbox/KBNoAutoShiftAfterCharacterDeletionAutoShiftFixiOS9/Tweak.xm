#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (bool)shouldEnableShiftForDeletedCharacter:(unsigned int)arg1 {
    return 0;
}
%end

