#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class UICollectionViewTableLayoutAttributes; 
static void (*_logos_orig$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UICollectionViewTableLayoutAttributes* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UICollectionViewTableLayoutAttributes* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorColor$)(_LOGOS_SELF_TYPE_NORMAL UICollectionViewTableLayoutAttributes* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorColor$(_LOGOS_SELF_TYPE_NORMAL UICollectionViewTableLayoutAttributes* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UICollectionViewTableLayoutAttributes* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorColor$(_LOGOS_SELF_TYPE_NORMAL UICollectionViewTableLayoutAttributes* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UICollectionViewTableLayoutAttributes = objc_getClass("UICollectionViewTableLayoutAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UICollectionViewTableLayoutAttributes, @selector(setSeparatorStyle:), (IMP)&_logos_method$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorStyle$, (IMP*)&_logos_orig$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorStyle$);}{ MSHookMessageEx(_logos_class$_ungrouped$UICollectionViewTableLayoutAttributes, @selector(setSeparatorColor:), (IMP)&_logos_method$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorColor$, (IMP*)&_logos_orig$_ungrouped$UICollectionViewTableLayoutAttributes$setSeparatorColor$);}} }
#line 15 "Tweak.xm"
