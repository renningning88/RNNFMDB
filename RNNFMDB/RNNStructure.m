//
//  RNNStructure.m
//  Operations library of sqlite base on FMDB
//
//  Created by ningning ren on 15/12/2.
//  Copyright © 2015年 ningning.ren All rights reserved.
//

#import "RNNStructure.h"

@implementation RNNStructure
-(void)addWithField:(NSString *)field andType:(RNNStructureType)type{
    NSDictionary *structure = [NSDictionary dictionary];
    if (type==RNNStructureTypeAutoInc) {
        structure = @{field:@"integer primary key autoincrement"};
    }
    else if (type==RNNStructureTypeNormalInt){
        structure = @{field:@"integer not null"};
    }
    else if (type ==RNNStructureTypeNormalText){
        structure = @{field:@"text not null"};
    }
    else if(type==RNNStructureTypePrimaryInt){
        structure = @{field:@"integer primary key"};
    }
    else if (type==RNNStructureTypePrimaryText){
        structure = @{field:@"text primary key"};
    }
    [self.structureArray addObject:structure];
}

-(NSDictionary *)structureDictory{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (NSDictionary *dic in self.structureArray) {
        [dict addEntriesFromDictionary:dic];
    }
    return [NSDictionary dictionaryWithDictionary:dict];
}



-(NSMutableArray *)structureArray{
    if (_structureArray) {
        return _structureArray;
    }
    _structureArray = [NSMutableArray array];
    return _structureArray;
}
-(NSArray *)fieldsArray{
    return [[self structureDictory] allKeys];
}
-(NSString *)fieldsString{
    NSString *fields = nil;
    for (NSString *obj in self.fieldsArray) {
        if (fields==nil) {
            fields = obj;
        }
        else{
            fields = [NSString stringWithFormat:@"%@,%@",fields,obj];
        }
    }
    return fields;
}
@end
