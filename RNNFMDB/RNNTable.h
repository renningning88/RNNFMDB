//
//  RNNTable.h
//  Operations library of sqlite base on FMDB
//
//  Created by ningning ren on 15/12/2.
//  Copyright © 2015年 ningning.ren All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNNFMDB.h"
#import "RNNStructure.h"
@interface RNNTable : NSObject
@property (nonatomic,copy) RNNFMDB * db;

@property(nonatomic,strong)NSString *tableName;

@property(nonatomic,strong)NSString *databaseName;

@property(nonatomic,strong)RNNStructure *structure;

@property(nonatomic,strong)NSArray *indexes;

@property(nonatomic,strong)NSString *prefixUserDefaultKey;

@property(nonatomic,strong)NSString *prefixBeforeKey;

@property(nonatomic,strong)NSString *prefixAfterKey;



-(void)truncate;

-(NSUInteger)count;

-(BOOL)isEmpty;

-(NSString *)lastSql;

-(NSString *)databasePath;

#pragma mark - CREATE

-(void)addFields:(NSDictionary *)fields;

-(void)addFieldsIfNotExist:(NSDictionary *)fields;

-(void)addOrUpdateFields:(NSDictionary *)fields andWhere:(NSString *)where;

#pragma mark - UPDATE
-(void)updateFields:(NSDictionary *)fields andWhere:(NSString *)where;

-(void)setField:(NSString *)field andValue:(id)value andWhere:(NSString *)where;


#pragma mark - DELETE

-(void)deleteWithWhere:(NSString *)where;

#pragma mark - READ

-(id)getField:(NSString *)field andWhere:(NSString *)where;

-(NSDictionary *)findWithWhere:(NSString *)where;

-(NSArray *)selectAll;

-(NSArray *)selectWithWhere:(NSString *)where;

-(NSArray *)selectWithWhere:(NSString *)where andFields:(NSString *)fields;

-(NSArray *)selectWithWhere:(NSString *)where andFields:(NSString *)fields andPage:(NSUInteger)page andPageSize:(NSUInteger)pagesize;

-(NSArray *)selectWithWhere:(NSString *)where andFields:(NSString *)fields andPage:(NSUInteger)page andPageSize:(NSUInteger)pagesize andOrder:(NSString *)order;

#pragma mark - HAS

-(BOOL)hasWhere:(NSString *)where;

-(BOOL)hasFields:(NSDictionary *)fields;

#pragma mark - origin sql

-(NSArray *)executeQueryWithSql:(NSString *)sql;

-(BOOL)executeUpdateWithSql:(NSString *)sql;


@end
