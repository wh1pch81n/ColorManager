//
//  ViewController2.m
//  ColorManager
//
//  Created by Derrick Ho on 12/30/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

#import "ViewController2.h"
#import "StyleKey.h"

@implementation ViewController2

- (void)loadView {
	[super loadView];
	StyleManager.style = [RosyStyle new];
	
	self.view.backgroundColor = [[StyleManager color] backgroundColorRegular];
	self.label1.textColor = [[StyleManager color] textColorRegular];
	self.label1.font = [[StyleManager font] fontRegular];
	
	self.label2.textColor = [[StyleManager color] textColorLight];
	self.label2.font = [[StyleManager font] fontRegular];
	
	self.exampleView.backgroundColor = [[StyleManager color] customColorFrom:FontKeyExample];
}

@end

@implementation RosyStyle

- (UIColor *)backgroundColorRegular {
	return [UIColor colorWithRed:1.0 green:0.7 blue:0.7 alpha:1];
}

- (UIColor *)textColorRegular {
	return [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
}

- (UIColor *)textColorLight {
	return [UIColor colorWithRed:0.8 green:0.5 blue:0.5 alpha:1];
}

- (UIFont *)fontRegular {
	return [UIFont fontWithName:@"SnellRoundhand" size:20];
}

- (UIColor *)customColorFrom:(ColorKey)key {
	if ([key isEqualToString:FontKeyExample]) {
		return [UIColor purpleColor];
	} else {
		return nil;
	}
}

@end
