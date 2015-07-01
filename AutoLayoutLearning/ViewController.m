//
//  ViewController.m
//  AutoLayoutLearning
//
//  Created by Angelo Lobo on 6/25/15.
//  Copyright (c) 2015 Angelo Lobo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSDictionary *viewsDictionary;

@end

@implementation ViewController

@synthesize viewsDictionary;

-(void)loadView{
    UIView *myView = [UIView new];
    myView.backgroundColor = [UIColor colorWithWhite:0.5f alpha:1.0f];
    self.view = myView;
    
    [self setupViews];
}

-(void)setupViews{
    UIView *redView = [UIView new];
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    redView.backgroundColor = [UIColor colorWithRed:0.95 green:0.47 blue:0.48 alpha:1.0];
    
    UIView *yellowView = [UIView new];
    yellowView.translatesAutoresizingMaskIntoConstraints = NO;
    yellowView.backgroundColor = [UIColor colorWithRed:1.00 green:0.83 blue:0.58 alpha:1.0];
    
    
    [self.view addSubview:yellowView];
    [self.view addSubview:redView];
    
    
    viewsDictionary = @{@"redView":redView,
                        @"yellowView": yellowView};
    
    /*
    
    NSArray *widthConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]" options:0 metrics:nil views:viewsDictionary];
    NSArray *heightConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(100)]" options:0 metrics:nil views:viewsDictionary];
    
    
    [redView addConstraints:widthConstraint];
    [redView addConstraints:heightConstraint];
    
    NSArray *posXConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView]" options:0 metrics:nil views:viewsDictionary];
    NSArray *posYConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[redView]" options:0 metrics:nil views:viewsDictionary];
    
    [self.view addConstraints:posXConstraint];
    [self.view addConstraints:posYConstraint];
    
    
    NSArray *yellowViewConstraintsH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-140-[yellowView(150)]" options:0 metrics:nil views:viewsDictionary];
    NSArray *yellowViewConstraintsV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[yellowView(150)]" options:0 metrics:nil views:viewsDictionary];
    
    [self.view addConstraints:yellowViewConstraintsH];
    [self.view addConstraints:yellowViewConstraintsV];
    
    */
    
    /*
    NSArray *viewsConstraintsH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView(100)]-30-[yellowView(150)]" options:0 metrics:nil views:viewsDictionary];
    NSArray *viewsConstraintsV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[redView(100)]-20-[yellowView(150)]" options:0 metrics:nil views:viewsDictionary];
    
    [self.view addConstraints:viewsConstraintsH];
    [self.view addConstraints:viewsConstraintsV];
     */

    /*
    NSArray *redWidthConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(100)]" options:0 metrics:nil views:viewsDictionary];
    NSArray *redHeightConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[redView(100)]" options:0 metrics:nil views:viewsDictionary];
    
    [redView addConstraints:redWidthConstraint];
    [redView addConstraints:redHeightConstraint];
    
    NSArray *yellowWidthConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[yellowView(150)]" options:0 metrics:nil views:viewsDictionary];
    NSArray *yellowHeightConstraint = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(150)]" options:0 metrics:nil views:viewsDictionary];
    
    [yellowView addConstraints:yellowWidthConstraint];
    [yellowView addConstraints:yellowHeightConstraint];
    
    NSArray *viewsConstraintsH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[redView]-30-[yellowView]-20-|" options:NSLayoutFormatAlignAllTop metrics:nil views:viewsDictionary];
    NSArray *viewsConstraintsV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[redView]" options:0 metrics:nil views:viewsDictionary];

    [self.view addConstraints:viewsConstraintsH];
    [self.view addConstraints:viewsConstraintsV];
     */
    
    //Try pinning two views to fit different sizes.
    NSArray *viewsConstraintsH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[redView(>=10)]-20-[yellowView(>=100)]-10-|" options:NSLayoutFormatAlignAllTop metrics:nil views:viewsDictionary];
    NSArray *viewsConstraintsV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[redView(>=10)]-10-|" options:0 metrics:nil views:viewsDictionary];
    NSArray *viewsConstraintsV2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[yellowView(>=10)]-100-|" options:0 metrics:nil views:viewsDictionary];
    
    [self.view addConstraints:viewsConstraintsH];
    [self.view addConstraints:viewsConstraintsV];
    [self.view addConstraints:viewsConstraintsV2];
    
    //Implement size classes here.

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
