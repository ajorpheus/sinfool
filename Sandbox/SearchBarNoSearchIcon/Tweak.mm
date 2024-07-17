#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UISearchBar$_imageForSearchBarIcon$state$customImage$(id self, SEL _cmd, long long arg1, unsigned long long arg2, bool* arg3) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UISearchBar = objc_getClass("UISearchBar");
    MSHookMessageEx(_ftt_class_UISearchBar, @selector(_imageForSearchBarIcon:state:customImage:), (IMP)_patched_ftt_meth_$UISearchBar$_imageForSearchBarIcon$state$customImage$, NULL);
}
