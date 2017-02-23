//
//  PhotoCollectionViewCell.h
//  InstaKilo
//
//  Created by Sofia Knezevic on 2017-02-22.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoCollectionViewCell : UICollectionViewCell <UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UIImageView *myPhoto;


- (NSMutableArray *)getArrayOfSubjects;

@end
