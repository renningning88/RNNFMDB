//
//  RNNStructure.h
//  Operations library of sqlite base on FMDB
//
//  Created by ningning ren on 15/12/2.
//  Copyright © 2015年 ningning.ren. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger, RNNStructureType) {
    RNNStructureTypeAutoInc = 0,//AUTO INCREAMNT && PRIMARY KEY INT
    RNNStructureTypePrimaryInt = 1,//PRIMARY KEY INT
    RNNStructureTypePrimaryText = 2,//PRIMARY KEY TEXT
    RNNStructureTypeNormalInt = 3,//COMMON COLUMN KEY INT
    RNNStructureTypeNormalText = 4,//COMMON COLUMN KEY TEXT
};
@interface RNNStructure : NSObject
@property(nonatomic,strong)NSMutableArray *structureArray;
@property(nonatomic,strong)NSDictionary *structureDictory;


-(void)addWithField:(NSString *)field andType:(RNNStructureType)type;
-(NSArray *)fieldsArray;
-(NSString *)fieldsString;
@end

