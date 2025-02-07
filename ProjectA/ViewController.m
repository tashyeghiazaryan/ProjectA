//
//  ViewController.m
//  ProjectA
//
//  Created by Artashes.Egiazaryan on 02.02.25.
//

#import "ViewController.h"
#import "Constants.h"
#import <ProjectB/ProjectB.h>
#import <ProjectC/ProjectC.h>

@interface ViewController ()

@property(nonatomic, strong) IBOutlet UILabel* bTextLabel;
@property(nonatomic, strong) IBOutlet UILabel* cTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"Project A Running");
    self.view.backgroundColor = UIColor.redColor;
    
    BLogger* bLogger = [BLogger new];
    [bLogger functionB];
    
    CLogger* cLogger = [CLogger new];
    [cLogger functionC];
    
    self.cTextLabel.text = [cLogger getURLConstantText];
}


@end
