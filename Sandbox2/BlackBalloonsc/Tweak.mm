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

@class CKUIBehavior; 
static id (*_logos_orig$_ungrouped$CKUIBehavior$blue_balloonColors)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUIBehavior$blue_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKUIBehavior$green_balloonColors)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUIBehavior$green_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$CKUIBehavior$blue_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$CKUIBehavior$green_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CKUIBehavior = objc_getClass("CKUIBehavior"); { MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(blue_balloonColors), (IMP)&_logos_method$_ungrouped$CKUIBehavior$blue_balloonColors, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$blue_balloonColors);}{ MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(green_balloonColors), (IMP)&_logos_method$_ungrouped$CKUIBehavior$green_balloonColors, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$green_balloonColors);}} }
#line 17 "Tweak.xm"
