#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UICollectionViewTableLayoutAttributes$setSeparatorStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$UICollectionViewTableLayoutAttributes$setSeparatorStyle$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UICollectionViewTableLayoutAttributes$setSeparatorStyle$(self, _cmd, arg1);
}

static void _patched_ftt_meth_$UICollectionViewTableLayoutAttributes$setSeparatorColor$(id self, SEL _cmd, id arg1) {
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UICollectionViewTableLayoutAttributes = objc_getClass("UICollectionViewTableLayoutAttributes");
    MSHookMessageEx(_ftt_class_UICollectionViewTableLayoutAttributes, @selector(setSeparatorStyle:), (IMP)_patched_ftt_meth_$UICollectionViewTableLayoutAttributes$setSeparatorStyle$, (IMP *)_orig_ftt_meth_$UICollectionViewTableLayoutAttributes$setSeparatorStyle$);
    MSHookMessageEx(_ftt_class_UICollectionViewTableLayoutAttributes, @selector(setSeparatorColor:), (IMP)_patched_ftt_meth_$UICollectionViewTableLayoutAttributes$setSeparatorColor$, NULL);
}
