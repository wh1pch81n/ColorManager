//
//  ViewController2.h
//  ColorManager
//
//  Created by Derrick Ho on 12/30/16.
//  Copyright © 2016 Derrick Ho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorManager-Swift.h"

@interface ViewController2 : UIViewController

@property (weak) IBOutlet UILabel *label1;
@property (weak) IBOutlet UILabel *label2;
@property (weak) IBOutlet UIView *exampleView;


@end


@interface RosyStyle : NSObject <ColorProtocol, FontProtocol>

@end
