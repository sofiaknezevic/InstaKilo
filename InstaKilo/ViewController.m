//
//  ViewController.m
//  InstaKilo
//
//  Created by Sofia Knezevic on 2017-02-22.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "ViewController.h"
#import "PhotoCollectionViewCell.h"
#import "HeaderCollectionReusableView.h"
#import "Photos.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *photoCollectionView;
@property (nonatomic, strong) Photos *myPhotos;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentChoice;
@property (nonatomic) NSInteger choiceOfSegment;


@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myPhotos = [Photos new];
    [self.myPhotos getArrayOfImages];

    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{

    NSInteger numberOfItemsInSection;
    
    if (self.choiceOfSegment == 0) {
        
        NSArray *subjectValues = [self.myPhotos.subjectDict allValues];
        
        numberOfItemsInSection = [[subjectValues objectAtIndex:section]count];

    }else{
        
        NSArray *locationValues = [self.myPhotos.locationDict allValues];
        
        numberOfItemsInSection = [[locationValues objectAtIndex:section]count];
        
        
    }
    
    return numberOfItemsInSection;
    
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    NSInteger numberOfSections;
    
    if(self.choiceOfSegment == 0){
        
        numberOfSections = [[self.myPhotos.subjectDict allKeys]count];
        
    }else if(self.choiceOfSegment == 1){
        
        numberOfSections = [[self.myPhotos.locationDict allKeys]count];
    
    }
    
    return numberOfSections;
}

- (PhotoCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCollectionViewCell *cell = [self.photoCollectionView dequeueReusableCellWithReuseIdentifier:@"myCell" forIndexPath:indexPath];
    
    if (self.choiceOfSegment == 0) {
        
        NSArray *photosSubj = [self.myPhotos.subjectDict allValues];
        
        NSArray *photosShown = [photosSubj objectAtIndex:indexPath.section];
        
        cell.myPhoto.image = photosShown[indexPath.row];
    }
    else{
        
        NSArray *photosLoc = [self.myPhotos.locationDict allValues];
        
        NSArray *photosShown = [photosLoc objectAtIndex:indexPath.section];
        
        cell.myPhoto.image = photosShown[indexPath.row];
        
    }
    
    
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (IBAction)segmentChosen:(UISegmentedControl*)sender {
    
    self.choiceOfSegment = sender.selectedSegmentIndex;
    
    [self.photoCollectionView reloadData];
}


@end
