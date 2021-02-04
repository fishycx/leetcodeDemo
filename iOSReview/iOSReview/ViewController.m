//
//  ViewController.m
//  iOSReview
//
//  Created by fishycx on 2020/12/7.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *outerView;

@property (weak, nonatomic) IBOutlet UIView *innerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CATransform3D outer = CATransform3DIdentity;
    outer.m34 = -1.0/500; //透视投影
    outer = CATransform3DMakeRotation(M_PI_4, 0, 1, 0);
    self.outerView.layer.transform = outer;
    
    CATransform3D inner = CATransform3DIdentity;
    inner.m34 = -1.0/500; //透视投影
    outer = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
    self.innerView.layer.transform = outer;
    
}


@end
