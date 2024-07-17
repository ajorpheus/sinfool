#import <UIKit/UIKit.h>

%hook _SBFolderPageElement
- (id)gridImage {
    // •
    return NULL;
}
%end

