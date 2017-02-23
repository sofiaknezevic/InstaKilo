//
//  PhotoCollectionViewCell.m
//  InstaKilo
//
//  Created by Sofia Knezevic on 2017-02-22.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "PhotoCollectionViewCell.h"
#import "Photos.h"

@interface PhotoCollectionViewCell()

@property (nonatomic, strong) Photos *photosForSections;

@end


@implementation PhotoCollectionViewCell

- (NSMutableArray *)getArrayOfSubjects
{
    [self.photosForSections getArrayOfImages];
   
    NSMutableArray *amountOfPicturesInSection = [[NSMutableArray alloc] init];
    
    for (Photos *pictureObject in self.photosForSections.arrayOfPhotoObjects) {
        
        if (![amountOfPicturesInSection containsObject:pictureObject.subject]) {
            
            
            
        }
        
    }
    
    
}


@end
