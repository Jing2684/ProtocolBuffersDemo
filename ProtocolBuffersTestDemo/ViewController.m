//
//  ViewController.m
//  ProtocolBuffersTestDemo
//
//  Created by jing on 16/10/31.
//  Copyright © 2016年 jing. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *person = [[Person alloc] init];
    person.uid = 111;
    person.name = @"test";
    person.phone = @"111111";
    NSData *data = [person data];
    Person *p = [Person parseFromData:data error:nil];
    NSLog(@"person:%@",p);

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
