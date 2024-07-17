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

@class PXTemperatureCollectionViewCell; @class UILabel; @class UIImageView; @class UIView; 
static void (*_logos_orig$_ungrouped$UIView$_setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIView$_setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$UIImageView$_effectiveTintColorWithImage$)(_LOGOS_SELF_TYPE_NORMAL UIImageView* _LOGOS_SELF_CONST, SEL, id); static id _logos_method$_ungrouped$UIImageView$_effectiveTintColorWithImage$(_LOGOS_SELF_TYPE_NORMAL UIImageView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UILabel$_setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UILabel$_setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$PXTemperatureCollectionViewCell$setColor$)(_LOGOS_SELF_TYPE_NORMAL PXTemperatureCollectionViewCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PXTemperatureCollectionViewCell$setColor$(_LOGOS_SELF_TYPE_NORMAL PXTemperatureCollectionViewCell* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$UIView$_setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:28/255.0 green:28/255.0 blue:28/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UIView$_setBackgroundColor$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$UIImageView$_effectiveTintColorWithImage$(_LOGOS_SELF_TYPE_NORMAL UIImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
}



static void _logos_method$_ungrouped$UILabel$_setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UILabel$_setTextColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$PXTemperatureCollectionViewCell$setColor$(_LOGOS_SELF_TYPE_NORMAL PXTemperatureCollectionViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:4/255.0 green:139/255.0 blue:27/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$PXTemperatureCollectionViewCell$setColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIView = objc_getClass("UIView"); { MSHookMessageEx(_logos_class$_ungrouped$UIView, @selector(_setBackgroundColor:), (IMP)&_logos_method$_ungrouped$UIView$_setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$UIView$_setBackgroundColor$);}Class _logos_class$_ungrouped$UIImageView = objc_getClass("UIImageView"); { MSHookMessageEx(_logos_class$_ungrouped$UIImageView, @selector(_effectiveTintColorWithImage:), (IMP)&_logos_method$_ungrouped$UIImageView$_effectiveTintColorWithImage$, (IMP*)&_logos_orig$_ungrouped$UIImageView$_effectiveTintColorWithImage$);}Class _logos_class$_ungrouped$UILabel = objc_getClass("UILabel"); { MSHookMessageEx(_logos_class$_ungrouped$UILabel, @selector(_setTextColor:), (IMP)&_logos_method$_ungrouped$UILabel$_setTextColor$, (IMP*)&_logos_orig$_ungrouped$UILabel$_setTextColor$);}Class _logos_class$_ungrouped$PXTemperatureCollectionViewCell = objc_getClass("PXTemperatureCollectionViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$PXTemperatureCollectionViewCell, @selector(setColor:), (IMP)&_logos_method$_ungrouped$PXTemperatureCollectionViewCell$setColor$, (IMP*)&_logos_orig$_ungrouped$PXTemperatureCollectionViewCell$setColor$);}} }
#line 34 "Tweak.xm"
