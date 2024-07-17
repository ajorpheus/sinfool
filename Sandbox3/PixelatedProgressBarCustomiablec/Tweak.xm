#import <UIKit/UIKit.h>

%hook _SFNavigationBarURLButton
- (void)setBackgroundAlphaFactor:(double)arg1 {
    // Flat URL
    arg1 = 0;
    %orig;
}
%end

%hook _SFFluidProgressView
- (void)setCornerRadius:(double)arg1 {
    // Pixelated Progress Bar (in landscspe)
    arg1 = 0.0001;
    %orig;
}
%end

%hook _SFFluidProgressView
- (void)setProgressBarFillColor:(id)arg1 {
    // Progress Bar Color
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

