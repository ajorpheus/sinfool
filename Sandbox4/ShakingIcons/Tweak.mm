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

@class SBFolderTitleTextField; @class SBIconController; @class SBFolderIconView; @class SBFolder; @class SBIconView; @class SBFolderIcon; @class SBFolderView; 
static void (*_logos_orig$_ungrouped$SBIconView$setAllowJitter$)(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBIconView$setAllowJitter$(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL, bool); static BOOL (*_logos_orig$_ungrouped$SBIconView$allowsTapWhileEditing)(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBIconView$allowsTapWhileEditing(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SBIconController$isEditing)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBIconController$isEditing(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SBIconController$allowsUninstall)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBIconController$allowsUninstall(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SBFolderIconView$allowsTapWhileEditing)(_LOGOS_SELF_TYPE_NORMAL SBFolderIconView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBFolderIconView$allowsTapWhileEditing(_LOGOS_SELF_TYPE_NORMAL SBFolderIconView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBFolderTitleTextField$setShowsEditUI$animated$)(_LOGOS_SELF_TYPE_NORMAL SBFolderTitleTextField* _LOGOS_SELF_CONST, SEL, BOOL, BOOL); static void _logos_method$_ungrouped$SBFolderTitleTextField$setShowsEditUI$animated$(_LOGOS_SELF_TYPE_NORMAL SBFolderTitleTextField* _LOGOS_SELF_CONST, SEL, BOOL, BOOL); static bool (*_logos_orig$_ungrouped$SBFolder$canEditDisplayName)(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBFolder$canEditDisplayName(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SBFolderIcon$_miniIconGridForPage$)(_LOGOS_SELF_TYPE_NORMAL SBFolderIcon* _LOGOS_SELF_CONST, SEL, long long); static id _logos_method$_ungrouped$SBFolderIcon$_miniIconGridForPage$(_LOGOS_SELF_TYPE_NORMAL SBFolderIcon* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$SBFolderView$setCurrentPageIndex$animated$)(_LOGOS_SELF_TYPE_NORMAL SBFolderView* _LOGOS_SELF_CONST, SEL, long long, bool); static bool _logos_method$_ungrouped$SBFolderView$setCurrentPageIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBFolderView* _LOGOS_SELF_CONST, SEL, long long, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBIconView$setAllowJitter$(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBIconView$setAllowJitter$(self, _cmd, arg1);
}



static BOOL _logos_method$_ungrouped$SBIconController$isEditing(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$SBIconController$allowsUninstall(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static BOOL _logos_method$_ungrouped$SBIconView$allowsTapWhileEditing(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static BOOL _logos_method$_ungrouped$SBFolderIconView$allowsTapWhileEditing(_LOGOS_SELF_TYPE_NORMAL SBFolderIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$SBFolderTitleTextField$setShowsEditUI$animated$(_LOGOS_SELF_TYPE_NORMAL SBFolderTitleTextField* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1, BOOL arg2) {
    arg1 = 0;
    arg2 = 0;
    _logos_orig$_ungrouped$SBFolderTitleTextField$setShowsEditUI$animated$(self, _cmd, arg1, arg2);
}



static bool _logos_method$_ungrouped$SBFolder$canEditDisplayName(_LOGOS_SELF_TYPE_NORMAL SBFolder* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static id _logos_method$_ungrouped$SBFolderIcon$_miniIconGridForPage$(_LOGOS_SELF_TYPE_NORMAL SBFolderIcon* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    arg1 = 0;
    return _logos_orig$_ungrouped$SBFolderIcon$_miniIconGridForPage$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBFolderView$setCurrentPageIndex$animated$(_LOGOS_SELF_TYPE_NORMAL SBFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, bool arg2) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconView = objc_getClass("SBIconView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconView, @selector(setAllowJitter:), (IMP)&_logos_method$_ungrouped$SBIconView$setAllowJitter$, (IMP*)&_logos_orig$_ungrouped$SBIconView$setAllowJitter$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBIconView, @selector(allowsTapWhileEditing), (IMP)&_logos_method$_ungrouped$SBIconView$allowsTapWhileEditing, (IMP*)&_logos_orig$_ungrouped$SBIconView$allowsTapWhileEditing);}Class _logos_class$_ungrouped$SBIconController = objc_getClass("SBIconController"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(isEditing), (IMP)&_logos_method$_ungrouped$SBIconController$isEditing, (IMP*)&_logos_orig$_ungrouped$SBIconController$isEditing);}{ MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(allowsUninstall), (IMP)&_logos_method$_ungrouped$SBIconController$allowsUninstall, (IMP*)&_logos_orig$_ungrouped$SBIconController$allowsUninstall);}Class _logos_class$_ungrouped$SBFolderIconView = objc_getClass("SBFolderIconView"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolderIconView, @selector(allowsTapWhileEditing), (IMP)&_logos_method$_ungrouped$SBFolderIconView$allowsTapWhileEditing, (IMP*)&_logos_orig$_ungrouped$SBFolderIconView$allowsTapWhileEditing);}Class _logos_class$_ungrouped$SBFolderTitleTextField = objc_getClass("SBFolderTitleTextField"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolderTitleTextField, @selector(setShowsEditUI:animated:), (IMP)&_logos_method$_ungrouped$SBFolderTitleTextField$setShowsEditUI$animated$, (IMP*)&_logos_orig$_ungrouped$SBFolderTitleTextField$setShowsEditUI$animated$);}Class _logos_class$_ungrouped$SBFolder = objc_getClass("SBFolder"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolder, @selector(canEditDisplayName), (IMP)&_logos_method$_ungrouped$SBFolder$canEditDisplayName, (IMP*)&_logos_orig$_ungrouped$SBFolder$canEditDisplayName);}Class _logos_class$_ungrouped$SBFolderIcon = objc_getClass("SBFolderIcon"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolderIcon, @selector(_miniIconGridForPage:), (IMP)&_logos_method$_ungrouped$SBFolderIcon$_miniIconGridForPage$, (IMP*)&_logos_orig$_ungrouped$SBFolderIcon$_miniIconGridForPage$);}Class _logos_class$_ungrouped$SBFolderView = objc_getClass("SBFolderView"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolderView, @selector(setCurrentPageIndex:animated:), (IMP)&_logos_method$_ungrouped$SBFolderView$setCurrentPageIndex$animated$, (IMP*)&_logos_orig$_ungrouped$SBFolderView$setCurrentPageIndex$animated$);}} }
#line 62 "Tweak.xm"
