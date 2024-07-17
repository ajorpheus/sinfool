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

@class UIView; @class beamPatchedSwiftClassNameScrollableButtonBar; @class UITabBarButton; @class UITableViewIndex; @class beamPatchedSwiftClassNameButtonBar; @class UITableViewCellSelectedBackground; @class UINavigationBar; @class _UITableViewHeaderFooterViewLabel; @class beamPatchedSwiftClassNameBeamButton; @class UIButtonContent; @class UIStatusBarNewUIStyleAttributes; @class UITextInputTraits; @class UILabel; 
static UIStatusBarNewUIStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$)(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static UIStatusBarNewUIStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$UINavigationBar$setBarTintColor$)(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UINavigationBar$setBarTintColor$(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UINavigationBar$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UINavigationBar$setTintColor$(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UIButtonContent$setImageColor$)(_LOGOS_SELF_TYPE_NORMAL UIButtonContent* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UIButtonContent$setImageColor$(_LOGOS_SELF_TYPE_NORMAL UIButtonContent* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$beamPatchedSwiftClassNameButtonBar$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$beamPatchedSwiftClassNameButtonBar$setTintColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UITableViewHeaderFooterViewLabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterViewLabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UITableViewHeaderFooterViewLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterViewLabel* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITableViewIndex$setIndexColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewIndex* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableViewIndex$setIndexColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewIndex* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITabBarButton$_showSelectedIndicator$changeSelection$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, bool, bool); static void _logos_method$_ungrouped$UITabBarButton$_showSelectedIndicator$changeSelection$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, bool, bool); static void (*_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static bool (*_logos_orig$_ungrouped$UIView$_ancestorDefinesTintColor)(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIView$_ancestorDefinesTintColor(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$)(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UILabel$_setTextColorFollowsTintColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UILabel$_setTextColorFollowsTintColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$UILabel$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static UIStatusBarNewUIStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$(self, _cmd, arg1, arg2, arg3);
}



static void _logos_method$_ungrouped$UINavigationBar$setBarTintColor$(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:242/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UINavigationBar$setBarTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UINavigationBar$setTintColor$(_LOGOS_SELF_TYPE_NORMAL UINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UINavigationBar$setTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UIButtonContent$setImageColor$(_LOGOS_SELF_TYPE_NORMAL UIButtonContent* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UIButtonContent$setImageColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$beamPatchedSwiftClassNameButtonBar$setTintColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$beamPatchedSwiftClassNameButtonBar$setTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UITableViewHeaderFooterViewLabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL _UITableViewHeaderFooterViewLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UITableViewHeaderFooterViewLabel$setTextColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITableViewIndex$setIndexColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewIndex* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableViewIndex$setIndexColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITabBarButton$_showSelectedIndicator$changeSelection$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2) {
    
    arg2 = 1;
    arg1 = 0;
    _logos_orig$_ungrouped$UITabBarButton$_showSelectedIndicator$changeSelection$(self, _cmd, arg1, arg2);
}



static bool _logos_method$_ungrouped$UIView$_ancestorDefinesTintColor(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2) {
    
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$(_LOGOS_SELF_TYPE_NORMAL UITextInputTraits* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:85/255.0 green:85/255.0 blue:85/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UILabel$_setTextColorFollowsTintColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$UILabel$_setTextColorFollowsTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UILabel$setTextColor$(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:39/255.0 green:39/255.0 blue:39/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UILabel$setTextColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalCtor_e6244da5(int __unused argc, char __unused **argv, char __unused **envp) {


    {Class _logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$);}Class _logos_class$_ungrouped$UINavigationBar = objc_getClass("UINavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationBar, @selector(setBarTintColor:), (IMP)&_logos_method$_ungrouped$UINavigationBar$setBarTintColor$, (IMP*)&_logos_orig$_ungrouped$UINavigationBar$setBarTintColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UINavigationBar, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$UINavigationBar$setTintColor$, (IMP*)&_logos_orig$_ungrouped$UINavigationBar$setTintColor$);}Class _logos_class$_ungrouped$UIButtonContent = objc_getClass("UIButtonContent"); { MSHookMessageEx(_logos_class$_ungrouped$UIButtonContent, @selector(setImageColor:), (IMP)&_logos_method$_ungrouped$UIButtonContent$setImageColor$, (IMP*)&_logos_orig$_ungrouped$UIButtonContent$setImageColor$);}Class _logos_class$_ungrouped$beamPatchedSwiftClassNameButtonBar = objc_getClass("beam.ButtonBar"); { MSHookMessageEx(_logos_class$_ungrouped$beamPatchedSwiftClassNameButtonBar, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$beamPatchedSwiftClassNameButtonBar$setTintColor$, (IMP*)&_logos_orig$_ungrouped$beamPatchedSwiftClassNameButtonBar$setTintColor$);}Class _logos_class$_ungrouped$beamPatchedSwiftClassNameScrollableButtonBar = objc_getClass("beam.ScrollableButtonBar"); { MSHookMessageEx(_logos_class$_ungrouped$beamPatchedSwiftClassNameScrollableButtonBar, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$, (IMP*)&_logos_orig$_ungrouped$beamPatchedSwiftClassNameScrollableButtonBar$setTintColor$);}Class _logos_class$_ungrouped$_UITableViewHeaderFooterViewLabel = objc_getClass("_UITableViewHeaderFooterViewLabel"); { MSHookMessageEx(_logos_class$_ungrouped$_UITableViewHeaderFooterViewLabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$_UITableViewHeaderFooterViewLabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$_UITableViewHeaderFooterViewLabel$setTextColor$);}Class _logos_class$_ungrouped$UITableViewIndex = objc_getClass("UITableViewIndex"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewIndex, @selector(setIndexColor:), (IMP)&_logos_method$_ungrouped$UITableViewIndex$setIndexColor$, (IMP*)&_logos_orig$_ungrouped$UITableViewIndex$setIndexColor$);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(_showSelectedIndicator:changeSelection:), (IMP)&_logos_method$_ungrouped$UITabBarButton$_showSelectedIndicator$changeSelection$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$_showSelectedIndicator$changeSelection$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)&_logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$);}Class _logos_class$_ungrouped$UIView = objc_getClass("UIView"); { MSHookMessageEx(_logos_class$_ungrouped$UIView, @selector(_ancestorDefinesTintColor), (IMP)&_logos_method$_ungrouped$UIView$_ancestorDefinesTintColor, (IMP*)&_logos_orig$_ungrouped$UIView$_ancestorDefinesTintColor);}Class _logos_class$_ungrouped$UITableViewCellSelectedBackground = objc_getClass("UITableViewCellSelectedBackground"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCellSelectedBackground, @selector(setSelectionTintColor:), (IMP)&_logos_method$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$, (IMP*)&_logos_orig$_ungrouped$UITableViewCellSelectedBackground$setSelectionTintColor$);}Class _logos_class$_ungrouped$beamPatchedSwiftClassNameBeamButton = objc_getClass("beam.BeamButton"); { MSHookMessageEx(_logos_class$_ungrouped$beamPatchedSwiftClassNameBeamButton, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$beamPatchedSwiftClassNameBeamButton$setBackgroundColor$);}Class _logos_class$_ungrouped$UITextInputTraits = objc_getClass("UITextInputTraits"); { MSHookMessageEx(_logos_class$_ungrouped$UITextInputTraits, @selector(setInsertionPointColor:), (IMP)&_logos_method$_ungrouped$UITextInputTraits$setInsertionPointColor$, (IMP*)&_logos_orig$_ungrouped$UITextInputTraits$setInsertionPointColor$);}Class _logos_class$_ungrouped$UILabel = objc_getClass("UILabel"); { MSHookMessageEx(_logos_class$_ungrouped$UILabel, @selector(_setTextColorFollowsTintColor:), (IMP)&_logos_method$_ungrouped$UILabel$_setTextColorFollowsTintColor$, (IMP*)&_logos_orig$_ungrouped$UILabel$_setTextColorFollowsTintColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UILabel, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$UILabel$setTextColor$, (IMP*)&_logos_orig$_ungrouped$UILabel$setTextColor$);}}

}
