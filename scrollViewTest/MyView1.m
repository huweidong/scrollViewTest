//
//  MyView1.m
//  scrollViewTest
//
//  Created by echo on 16/9/11.
//  Copyright © 2016年 echo. All rights reserved.
//

#import "MyView1.h"

@interface MyView1()

@property (weak, nonatomic) IBOutlet UIView *myContentView;

@end

@implementation MyView1

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self=[[[NSBundle mainBundle] loadNibNamed:@"MyView1" owner:self options:nil] lastObject];
    if (self) {
        self.frame=frame;
    }
    
    return self;
}

-(void)loadData{
    if (self.myContentColor==nil) {
        self.myContentView.backgroundColor=[UIColor lightGrayColor];
    }else{
        self.myContentView.backgroundColor=self.myContentColor;
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
