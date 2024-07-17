#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$NCLookViewFontProvider$nc_preferredFontForTextStyle$hiFontStyle$)(id, SEL, id, long long);
static id _patched_ftt_meth_$NCLookViewFontProvider$nc_preferredFontForTextStyle$hiFontStyle$(id self, SEL _cmd, id arg1, long long arg2) {
    // (Arg#3): (Italic=1, Bold=2)
    arg2 = 1;
    return _orig_ftt_meth_$NCLookViewFontProvider$nc_preferredFontForTextStyle$hiFontStyle$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCLookViewFontProvider = objc_getClass("NCLookViewFontProvider");
    MSHookMessageEx(_ftt_class_NCLookViewFontProvider, @selector(nc_preferredFontForTextStyle:hiFontStyle:), (IMP)_patched_ftt_meth_$NCLookViewFontProvider$nc_preferredFontForTextStyle$hiFontStyle$, (IMP *)_orig_ftt_meth_$NCLookViewFontProvider$nc_preferredFontForTextStyle$hiFontStyle$);
}
