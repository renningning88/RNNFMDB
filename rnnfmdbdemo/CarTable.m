//
//  CarTable.m
//  rnnfmdbdemo
//
//  Created by ningning on 16/2/27.
//  Copyright © 2016年 ningning. All rights reserved.
//

#import "CarTable.h"

@implementation CarTable
-(RNNStructure *)structure{
    RNNStructure * st = [[RNNStructure alloc] init];
    [st addWithField:@"id" andType:RNNStructureTypeAutoInc];
    [st addWithField:@"name" andType:RNNStructureTypeNormalText];
    [st addWithField:@"wheels" andType:RNNStructureTypeNormalInt];
    return st;
}

-(NSString *)tableName{
    return @"car";
}
@end
