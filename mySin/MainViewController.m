//
//  MainViewController.m
//  mySin
//
//  Created by NIkolay Tsygankov on 17.01.15.
//  Copyright (c) 2015 iosdevcourse. All rights reserved.
//

#import "MainViewController.h"
#import "AddSinViewController.h"


@interface MainViewController ()


@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"main";
    
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithTitle:@"add" style:UIBarButtonItemStylePlain target:self action:@selector(addSin)];
    self.navigationItem.rightBarButtonItem = addItem;
    // Do any additional setup after loading the view from its nib.
}

- (void) addSin {
    
    AddSinViewController *addSinVC = [[AddSinViewController alloc] initWithNibName:@"AddSinViewController" bundle:[NSBundle mainBundle]];
    
    [self.navigationController pushViewController:addSinVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
