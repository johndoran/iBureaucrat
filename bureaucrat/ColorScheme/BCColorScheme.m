////////////////////////////////////////////////////////////////////////////////
//
//  JASPER BLUES
//  Copyright 2013 Jasper Blues
//  All Rights Reserved.
//
//  NOTICE: Jasper Blues permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////


#import "BCColorScheme.h"


@implementation BCColorScheme


/* =========================================================== Class Methods ============================================================ */
+ (instancetype)defaultColorScheme
{
    return [[self alloc]
            initWithCellColor:[UIColor whiteColor] selectedCellColor:[UIColor colorWithRed:0.639 green:0.831 blue:0.486 alpha:1.0]
            sectionTitleColor:[UIColor colorWithRed:0.639 green:0.831 blue:0.486 alpha:1.0] defaultTextColor:[UIColor darkGrayColor]
            selectedTextColor:[UIColor colorWithRed:51 green:51 blue:51 alpha:1.0]
            buttonTintColor:[UIColor colorWithRed:0.639 green:0.831 blue:0.486 alpha:1.0]];
}

+ (id)schemeWithCellColor:(UIColor*)cellColor selectedCellColor:(UIColor*)selectedCellColor sectionTitleColor:(UIColor*)sectionTitleColor
        defaultTextColor:(UIColor*)defaultTextColor selectedTextColor:(UIColor*)selectedTextColor buttonTintColor:(UIColor*)buttonTintColor
{
    return [[self alloc] initWithCellColor:cellColor selectedCellColor:selectedCellColor sectionTitleColor:sectionTitleColor
            defaultTextColor:defaultTextColor selectedTextColor:selectedTextColor buttonTintColor:buttonTintColor];
}


/* ============================================================ Initializers ============================================================ */
- (id)initWithCellColor:(UIColor*)cellColor selectedCellColor:(UIColor*)selectedCellColor sectionTitleColor:(UIColor*)sectionTitleColor
        defaultTextColor:(UIColor*)defaultTextColor selectedTextColor:(UIColor*)selectedTextColor buttonTintColor:(UIColor*)buttonTintColor
{
    self = [super init];
    if (self)
    {
        _cellColor = cellColor;
        _selectedCellColor = selectedCellColor;
        _sectionTitleColor = sectionTitleColor;
        _defaultTextColor = defaultTextColor;
        _selectedTextColor = selectedTextColor;
        _buttonTintColor = buttonTintColor;
    }
    return self;
}

/* ============================================================ Utility Methods ========================================================= */
- (NSString*)description
{
    NSMutableString* description = [NSMutableString stringWithFormat:@"<%@: ", NSStringFromClass([self class])];
    [description appendFormat:@"self.cellColor=%@", self.cellColor];
    [description appendFormat:@", self.selectedCellColor=%@", self.selectedCellColor];
    [description appendFormat:@", self.sectionTitleColor=%@", self.sectionTitleColor];
    [description appendFormat:@", self.defaultTextColor=%@", self.defaultTextColor];
    [description appendFormat:@", self.selectedTextColor=%@", self.selectedTextColor];
    [description appendFormat:@", self.buttonTintColor=%@", self.buttonTintColor];
    [description appendString:@">"];
    return description;
}


@end