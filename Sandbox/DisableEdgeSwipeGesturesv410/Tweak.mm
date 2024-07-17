#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$WazeMainViewController$screenEdgePanEnabled$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_WazeMainViewController = objc_getClass("WazeMainViewController");
    MSHookMessageEx(_ftt_class_WazeMainViewController, @selector(screenEdgePanEnabled:), (IMP)_patched_ftt_meth_$WazeMainViewController$screenEdgePanEnabled$, NULL);
}
