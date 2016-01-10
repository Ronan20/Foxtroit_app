//
//  DetailViewController.h
//  FoxtroitApp
//
//  Created by Ronan McHugh on 10/01/2016.
//  Copyright (c) 2016 Ronan McHugh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

