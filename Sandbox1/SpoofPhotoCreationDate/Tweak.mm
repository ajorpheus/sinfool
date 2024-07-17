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

@class PUPhotoBrowserTitleView; 
static void (*_logos_orig$_ungrouped$PUPhotoBrowserTitleView$setCreationDate$)(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PUPhotoBrowserTitleView$setCreationDate$(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$PUPhotoBrowserTitleView$setCreationDate$(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = @"FLDate:1985-10-26T01:21:03-0400";
    _logos_orig$_ungrouped$PUPhotoBrowserTitleView$setCreationDate$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUPhotoBrowserTitleView = objc_getClass("PUPhotoBrowserTitleView"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotoBrowserTitleView, @selector(setCreationDate:), (IMP)&_logos_method$_ungrouped$PUPhotoBrowserTitleView$setCreationDate$, (IMP*)&_logos_orig$_ungrouped$PUPhotoBrowserTitleView$setCreationDate$);}} }
#line 11 "Tweak.xm"