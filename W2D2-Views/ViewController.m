//
//  ViewController.m
//  W2D2-Views
//
//  Created by Kareem Sabri on 2017-05-09.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *blueView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *myRedView = [[UIView alloc]initWithFrame:CGRectMake(0, 20, 25, 25)];
    myRedView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myRedView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:1 animations:^{
        self.blueView.frame = CGRectMake(0, 20, self.view.frame.size.width, self.blueView.frame.size.height*2);
    }];
}


@end
