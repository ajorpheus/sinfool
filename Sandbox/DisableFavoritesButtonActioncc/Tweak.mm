#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PUOneUpBarsController$_performFavoriteAction$)(id, SEL, bool);
static void _patched_ftt_meth_$PUOneUpBarsController$_performFavoriteAction$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$PUOneUpBarsController$_performFavoriteAction$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUOneUpBarsController = objc_getClass("PUOneUpBarsController");
    MSHookMessageEx(_ftt_class_PUOneUpBarsController, @selector(_performFavoriteAction:), (IMP)_patched_ftt_meth_$PUOneUpBarsController$_performFavoriteAction$, (IMP *)_orig_ftt_meth_$PUOneUpBarsController$_performFavoriteAction$);
}
