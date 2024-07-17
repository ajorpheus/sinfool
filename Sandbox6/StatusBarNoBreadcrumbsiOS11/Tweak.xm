#import <UIKit/UIKit.h>

%hook SBMainDisplaySceneManager
- (bool)_shouldBreadcrumbApplicationSceneEntity:(id)arg1 withTransitionContext:(id)arg2 {
    return 0;
}
%end

