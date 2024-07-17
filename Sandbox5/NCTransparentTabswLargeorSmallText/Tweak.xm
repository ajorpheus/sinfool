#import <UIKit/UIKit.h>

%hook UISegment
- (id)initWithInfo:(id)arg1 style:(long long)arg2 size:(int)arg3 barStyle:(long long)arg4 tintColor:(id)arg5 appearanceStorage:(id)arg6 position:(unsigned int)arg7 autosizeText:(bool)arg8 {
    // (Arg#2):	Standard Text=-1, Large Text=0
    arg2 = 0;
    return %orig;
}
%end

