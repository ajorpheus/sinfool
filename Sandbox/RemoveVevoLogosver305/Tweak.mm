#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$VUNavigationBar$showVevoLogo(id self, SEL _cmd) {
    // Navigation Bar Logo
    return 0;
}

static BOOL _patched_ftt_meth_$VMMoviePlayerController$hideDefaultVevoLogo(id self, SEL _cmd) {
    // Featured Video Logo Overlay
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_VUNavigationBar = objc_getClass("VUNavigationBar");
    MSHookMessageEx(_ftt_class_VUNavigationBar, @selector(showVevoLogo), (IMP)_patched_ftt_meth_$VUNavigationBar$showVevoLogo, NULL);
    Class _ftt_class_VMMoviePlayerController = objc_getClass("VMMoviePlayerController");
    MSHookMessageEx(_ftt_class_VMMoviePlayerController, @selector(hideDefaultVevoLogo), (IMP)_patched_ftt_meth_$VMMoviePlayerController$hideDefaultVevoLogo, NULL);
}
