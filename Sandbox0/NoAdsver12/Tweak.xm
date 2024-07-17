#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook STAAd
- (id)init {
    return NULL;
}
%end

%hook _LBLeadboltMng
- (id)init {
    return NULL;
}
%end

