//
//  MainViewController.m
//  scrollViewTest
//
//  Created by echo on 16/9/11.
//  Copyright © 2016年 echo. All rights reserved.
//

#import "MainViewController.h"
#import "MyView1.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.automaticallyAdjustsScrollViewInsets=NO;
    [self loadScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) loadScrollView{
    CGRect rect=[UIScreen mainScreen].bounds;
    self.scrollView.contentSize = CGSizeMake(5*rect.size.width, rect.size.height);
    self.scrollView.pagingEnabled=YES;
    
    MyView1 *view0=[[MyView1 alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, rect.size.height)];
    MyView1 *view1=[[MyView1 alloc] initWithFrame:CGRectMake(rect.size.width, 0, self.view.frame.size.width, rect.size.height)];
    MyView1 *view2=[[MyView1 alloc] initWithFrame:CGRectMake(rect.size.width*2, 0, self.view.frame.size.width, rect.size.height)];
    MyView1 *view3=[[MyView1 alloc] initWithFrame:CGRectMake(rect.size.width*3, 0, self.view.frame.size.width, rect.size.height)];
    MyView1 *view4=[[MyView1 alloc] initWithFrame:CGRectMake(rect.size.width*4, 0, self.view.frame.size.width, rect.size.height)];
    
    view0.myContentColor=[UIColor lightGrayColor];
    view1.myContentColor=[UIColor greenColor];
    view2.myContentColor=[UIColor redColor];
    view3.myContentColor=[UIColor blueColor];
    view4.myContentColor=[UIColor cyanColor];
    
    [view0 loadData];
    [view1 loadData];
    [view2 loadData];
    [view3 loadData];
    [view4 loadData];
    
    [self.scrollView addSubview:view0];
    [self.scrollView addSubview:view1];
    [self.scrollView addSubview:view2];
    [self.scrollView addSubview:view3];
    [self.scrollView addSubview:view4];
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
