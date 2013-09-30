//
//  ViewController.h
//  UIPickerView_Basico
//
//  Created by Henry AT on 9/30/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>


@property (strong, nonatomic) IBOutlet UILabel *ultimaAccion;
@property (strong, nonatomic) IBOutlet UILabel *resultado;

@end
