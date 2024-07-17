#import <UIKit/UIKit.h>

%hook IGStoryTraySectionController
- (id)initWithUserSession:(id)arg1 dataController:(id)arg2 dataSource:(id)arg3 loggingContext:(id)arg4 loggingDelegate:(id)arg5 entryPoint:(long long)arg6 traySectionConfiguration:(id)arg7 storyViewerConfiguration:(id)arg8 {
    arg7 = NULL;
    return %orig;
}
%end

