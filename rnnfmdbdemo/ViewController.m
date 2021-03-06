//
//  ViewController.m
//  rnnfmdbdemo
//
//  Created by ningning on 16/2/27.
//  Copyright © 2016年 ningning. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
- (IBAction)add;
- (IBAction)update;
- (IBAction)delete;
- (IBAction)query;
- (IBAction)truncate;
@end

@implementation ViewController

-(void)printSql{
    NSLog(@"sql:%@",self.table.lastSql);
}


-(CarTable *)table{
    if (_table) {
        return _table;
    }
    _table = [[CarTable alloc] init];
    return _table;
}
- (IBAction)add {
    for (int i=0; i<10; i++) {
        NSDictionary *data = @{
                               @"name":@"MINI",
                               @"wheels":@4 ,
                               };
        [self.table addFields:data];
    }
    [self printSql];
    NSLog(@"table count:%lu",(unsigned long)[self.table count]);
    [self printSql];
}

- (IBAction)update {
    [self.table updateFields:@{@"name":@"BMW"} andWhere:@"id > 2"];
    [self printSql];
}

- (IBAction)delete {
    
    [self.table deleteWithWhere:@"id>5"];
    [self printSql];
    
}

- (IBAction)query {
    // NSArray *result = [self.table selectWithWhere:nil andFields:@"*" andPage:1 andPageSize:5 andOrder:@"id desc"];
    NSArray *result = [self.table selectAll];
    NSLog(@"%@",result);
    [self printSql];
    
}

- (IBAction)truncate {
    [self.table truncate];
}

-(void)viewDidLoad{
    NSLog(@"viewDidLoad");
}

@end