#import <UIKit/UIKit.h>

%hook SettingsManager
- (id)versionAnalyzer {
    return NULL;
}
%end

