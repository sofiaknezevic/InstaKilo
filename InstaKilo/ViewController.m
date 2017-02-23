//
//  ViewController.m
//  InstaKilo
//
//  Created by Sofia Knezevic on 2017-02-22.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "ViewController.h"
#import "PhotoCollectionViewCell.h"
#import "Photos.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *photoCollectionView;
@property (nonatomic, strong) Photos *myPhotos;


@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myPhotos = [Photos new];
    [self.myPhotos getArrayOfImages];
    

}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    
    return 1;
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    return [self.myPhotos getNumberOfSubjects];
}

- (PhotoCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCollectionViewCell *cell = [self.photoCollectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];

    cell.myPhoto.image = [self.myPhotos.arrayOfPhotos objectAtIndex:indexPath.section];
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
