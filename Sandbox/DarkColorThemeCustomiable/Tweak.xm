#import <UIKit/UIKit.h>

%hook CalculatorPatchedSwiftClassNamePrimaryDisplayView
- (void)setBackgroundColor:(id)arg1 {
    // Input BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook CalculatorPatchedSwiftClassNameCalculatorKeypadLabel
- (void)setBackgroundColor:(id)arg1 {
    // Button Color
    arg1 = [UIColor colorWithRed:23/255.0 green:23/255.0 blue:23/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook CalculatorPatchedSwiftClassNameCalculatorKeypadLabel
- (void)setTextColor:(id)arg1 {
    // Button Text Color
    arg1 = [UIColor colorWithRed:37/255.0 green:185/255.0 blue:233/255.0 alpha:255/255.0];
    %orig;
}
%end

%ctor {
    %init(CalculatorPatchedSwiftClassNamePrimaryDisplayView = objc_getClass("Calculator.PrimaryDisplayView"),
        CalculatorPatchedSwiftClassNameCalculatorKeypadLabel = objc_getClass("Calculator.CalculatorKeypadLabel"));

}
