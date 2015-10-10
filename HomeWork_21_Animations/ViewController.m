#import "ViewController.h"

@interface ViewController ()
@property (weak , nonatomic) UIView* testView;
@property (weak , nonatomic) UIImageView* tesImageView;

@property (strong , nonatomic) NSArray* arrayForColor;
@property (copy , nonatomic) NSArray* arrayForOrdinats;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(UIColor*) randomColor {
    
    CGFloat redRandomColorLevel = (CGFloat)arc4random_uniform(256)/255;
    CGFloat greenRandomColorLevel = (CGFloat)arc4random_uniform(256)/255;
    CGFloat blueRandomColorLevel = (CGFloat)arc4random_uniform(256)/255;
    
    UIColor* random = [UIColor colorWithRed:redRandomColorLevel
                                       green:greenRandomColorLevel
                                        blue:blueRandomColorLevel
                                       alpha:1];
    
    return random;
}



-(void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:YES];
    /*
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50,  100, 100)];
    UIView* view2 = [[UIView alloc] initWithFrame:CGRectMake(50, 250, 100, 100)];
    UIView* view3 = [[UIView alloc] initWithFrame:CGRectMake(50, 450, 100, 100)];
    UIView* view4 = [[UIView alloc] initWithFrame:CGRectMake(50, 650, 100, 100)];

    NSArray* arrayForFourViews = [NSArray arrayWithObjects:view1,view2,view3,view4, nil];
    
    for (UIView* v in arrayForFourViews) {
        v.backgroundColor = [self randomColor];
        [self.view addSubview:v];
    }
    
    
    
    for (UIView* v in arrayForFourViews) {

    NSInteger indexView = [arrayForFourViews indexOfObject:v];
    UIViewAnimationOptions anim = 1 << 3 | 1 << 4 | indexView << 16;

    [UIView animateWithDuration:3
                          delay:1
                        options:anim
                     animations:^{
                             v.backgroundColor = [self randomColor];
                             v.center = CGPointMake(self.view.bounds.size.width - v.bounds.size.width/2, v.center.y);
                         }
                     completion:^(BOOL finished) {
                     }];
  }*/
    
    UIImageView* view = [[UIImageView alloc] initWithFrame:CGRectMake(0, CGRectGetMidY(self.view.bounds)/2, 750, 560)];
    UIImage* img1 = [UIImage imageNamed:@"1.tiff"];
    UIImage* img2 = [UIImage imageNamed:@"2.tiff"];
    UIImage* img3 = [UIImage imageNamed:@"3.tiff"];
    UIImage* img4 = [UIImage imageNamed:@"4.tiff"];
    UIImage* img5 = [UIImage imageNamed:@"5.tiff"];
    UIImage* img6 = [UIImage imageNamed:@"6.tiff"];
    UIImage* img7 = [UIImage imageNamed:@"7.tiff"];
    UIImage* img8 = [UIImage imageNamed:@"8.tiff"];
    UIImage* img9 = [UIImage imageNamed:@"9.tiff"];
    UIImage* img10 = [UIImage imageNamed:@"10.tiff"];

    NSArray* images = [NSArray arrayWithObjects:img1,img2,img3,img4,img5,
                                                img6,img7,img8,img9,img10, nil];
    view.animationImages = images;
    view.animationDuration = 1.2f;
    [self.view addSubview:view];
    
    float size = 100;
    
    CGRect rectRed    =  CGRectMake(self.view.bounds.origin.x+size/1.5,      self.view.bounds.origin.y+size/1.5,       size, size);
    CGRect rectYellow =  CGRectMake(self.view.bounds.origin.x+size/1.5,      self.view.bounds.size.height - size*1.5,    size, size);
    CGRect rectGreen  =  CGRectMake(self.view.bounds.size.width-size*1.5 ,   self.view.bounds.size.height - size*1.5,    size, size);
    CGRect rectBlue   =  CGRectMake(self.view.bounds.size.width-size*1.5,    self.view.bounds.origin.y+size/1.5,  size, size);
    
    UIView* view0Red    = [[UIView alloc] initWithFrame: rectRed];    view0Red.backgroundColor    = [UIColor redColor];
    UIView* view1Yellow = [[UIView alloc] initWithFrame: rectYellow]; view1Yellow.backgroundColor = [UIColor yellowColor];
    UIView* view2Green  = [[UIView alloc] initWithFrame: rectGreen];  view2Green.backgroundColor  = [UIColor greenColor];
    UIView* view3Blue   = [[UIView alloc] initWithFrame: rectBlue];   view3Blue.backgroundColor   = [UIColor blueColor];

    UIView* v1   = [[UIView alloc] initWithFrame: rectRed];    v1.backgroundColor    = [UIColor redColor];
    UIView* v2   = [[UIView alloc] initWithFrame: rectYellow]; v2.backgroundColor = [UIColor yellowColor];
    UIView* v3   = [[UIView alloc] initWithFrame: rectGreen];  v3.backgroundColor  = [UIColor greenColor];
    UIView* v4   = [[UIView alloc] initWithFrame: rectBlue];   v4.backgroundColor   = [UIColor blueColor];
    
    
    self.arrayForColor    = [NSArray arrayWithObjects: view0Red , view1Yellow, view2Green, view3Blue, nil];
    self.arrayForOrdinats = [NSArray arrayWithObjects: v1, v2, v3, v4, v1, nil];

    for (UIView* v in self.arrayForColor)
        [self.view addSubview:v];
   
////////
    
    
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(50, 50,  100, 100)];
    UIView* view2 = [[UIView alloc] initWithFrame:CGRectMake(50, 250, 100, 100)];
    UIView* view3 = [[UIView alloc] initWithFrame:CGRectMake(50, 450, 100, 100)];
    UIView* view4 = [[UIView alloc] initWithFrame:CGRectMake(50, 650, 100, 100)];
    
    NSArray* arrayForFourViews = [NSArray arrayWithObjects:view1,view2,view3,view4, nil];
    
    for (UIView* v in arrayForFourViews) {
        v.backgroundColor = [self randomColor];
        [self.view addSubview:v];
    }
    
    
    
    
    for (UIView* v in arrayForFourViews) {
        
        NSInteger indexView = [arrayForFourViews indexOfObject:v];
        UIViewAnimationOptions anim = 1 << 3 | 1 << 4 | indexView << 16;
        
        [UIView animateWithDuration:3
                              delay:1
                            options:anim
                         animations:^{
                             v.backgroundColor = [self randomColor];
                             v.center = CGPointMake(self.view.bounds.size.width - v.bounds.size.width/2, v.center.y);
                         }
                         completion:^(BOOL finished) {
                         }];
    }
    
    
    
    
    
        [UIView animateWithDuration:2.7
                              delay:0
                            options: UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat
                         animations:^{
                            
            
                             
                             [view startAnimating];
                             for (int i=0; i<=[self.arrayForColor count]-1; i++) {
                                 
                                 UIView* v1 = [self.arrayForColor objectAtIndex:i];
                                 UIView* v2 = [self.arrayForOrdinats objectAtIndex:i+1];
                                 
                                 v1.backgroundColor = v2.backgroundColor;
                                 v1.transform = CGAffineTransformMakeRotation(M_PI_4 * 2);
                                 v1.center = v2.center;
                                 
                             }
                             
                             
                         }
                         completion:^(BOOL finished) {
                         }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
