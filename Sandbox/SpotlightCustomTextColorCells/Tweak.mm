#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SearchUIVibrantLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$SearchUIVibrantLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Set Text Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SearchUIVibrantLabel$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SearchUIVibrantLabel = objc_getClass("SearchUIVibrantLabel");
    MSHookMessageEx(_ftt_class_SearchUIVibrantLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$SearchUIVibrantLabel$setTextColor$, (IMP *)_orig_ftt_meth_$SearchUIVibrantLabel$setTextColor$);
}
