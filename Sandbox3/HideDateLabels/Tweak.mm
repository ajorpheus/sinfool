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

@class NoteCell; @class NoteDateLabel; 
static id (*_logos_orig$_ungrouped$NoteCell$date)(_LOGOS_SELF_TYPE_NORMAL NoteCell* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$NoteCell$date(_LOGOS_SELF_TYPE_NORMAL NoteCell* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$NoteDateLabel$setDate$)(_LOGOS_SELF_TYPE_NORMAL NoteDateLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$NoteDateLabel$setDate$(_LOGOS_SELF_TYPE_NORMAL NoteDateLabel* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$NoteCell$date(_LOGOS_SELF_TYPE_NORMAL NoteCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static void _logos_method$_ungrouped$NoteDateLabel$setDate$(_LOGOS_SELF_TYPE_NORMAL NoteDateLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = NULL;
    _logos_orig$_ungrouped$NoteDateLabel$setDate$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NoteCell = objc_getClass("NoteCell"); { MSHookMessageEx(_logos_class$_ungrouped$NoteCell, @selector(date), (IMP)&_logos_method$_ungrouped$NoteCell$date, (IMP*)&_logos_orig$_ungrouped$NoteCell$date);}Class _logos_class$_ungrouped$NoteDateLabel = objc_getClass("NoteDateLabel"); { MSHookMessageEx(_logos_class$_ungrouped$NoteDateLabel, @selector(setDate:), (IMP)&_logos_method$_ungrouped$NoteDateLabel$setDate$, (IMP*)&_logos_orig$_ungrouped$NoteDateLabel$setDate$);}} }
#line 18 "Tweak.xm"
