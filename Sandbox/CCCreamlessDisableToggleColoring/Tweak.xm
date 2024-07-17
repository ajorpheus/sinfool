#import <UIKit/UIKit.h>

%hook CCUIControlCenterVisualEffect
- (id)contentsMultiplyColor {
    // Highlight Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}
%end

%hook CCUIAirStuffSectionController
- (id)_selectedStateColor {
    // AirStuff Glyph Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}
%end

%hook CCUINightShiftContentView
- (id)_selectedStateColor {
    // Night Shift Glyph Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}
%end

