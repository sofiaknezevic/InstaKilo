//
//  Photos.h
//  InstaKilo
//
//  Created by Sofia Knezevic on 2017-02-22.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Photos : NSObject

@property (nonatomic, strong) UIImage *photo;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *location;

@property (nonatomic, strong) NSMutableDictionary *subjectDict;
@property (nonatomic, strong) NSMutableDictionary *locationDict;
@property (nonatomic, strong) NSMutableArray *arrayOfImages;


- (NSMutableArray *)getArrayOfImages;





@end
