//
//  Photos.m
//  InstaKilo
//
//  Created by Sofia Knezevic on 2017-02-22.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "Photos.h"

@implementation Photos

- (instancetype)initWithImage:(UIImage *)photo andWithSubject:(NSString *)subject andWithLocation:(NSString *)location
{
    self = [super init];
    if (self) {
        
        _subject = subject;
        _location = location;
        _photo = photo;
    }
    return self;
}

- (NSMutableArray *)getArrayOfImages
{
    
    Photos *number1 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"amsterdamCanal"]
                                     andWithSubject:@"travel"
                                    andWithLocation:@"amsterdam"];
    
    Photos *number2 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"birthdaySurprise"]
                                     andWithSubject:@"birthday"
                                    andWithLocation:@"canada"];
    
    Photos *number3 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"dubrovnikAbandonedHotel"]
                                     andWithSubject:@"sightseeing"
                                    andWithLocation:@"dubrovnik"];
    
    Photos *number4 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"dubrovnikWall"]
                                     andWithSubject:@"sightseeing"
                                    andWithLocation:@"dubrovnik"];
    
    Photos *number5 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"montenegroBridge"]
                                     andWithSubject:@"travel"
                                    andWithLocation:@"montenegro"];
    
    Photos *number6 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"montenegroLake"]
                                     andWithSubject:@"travel"
                                    andWithLocation:@"montenegro"];
    
    Photos *number7 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"montrealNotreDame"]
                                     andWithSubject:@"sightseeing"
                                    andWithLocation:@"canada"];
    
    Photos *number8 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"niagaraFalls"]
                                     andWithSubject:@"sightseeing"
                                    andWithLocation:@"canada"];
    
    Photos *number9 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"torontoBurger"]
                                     andWithSubject:@"food"
                                    andWithLocation:@"canada"];
    
    Photos *number10 = [[Photos alloc] initWithImage:[UIImage imageNamed:@"zagoraTurtle"]
                                      andWithSubject:@"animals"
                                     andWithLocation:@"montenegro"];
    
    
    

    self.arrayOfPhotoObjects = [@[number1,
                                  number2,
                                  number3,
                                  number4,
                                  number5,
                                  number6,
                                  number7,
                                  number8,
                                  number9,
                                  number10,
                                  ]mutableCopy];
    
        self.arrayOfPhotos =   [@[number1.photo,
                                  number2.photo,
                                  number3.photo,
                                  number4.photo,
                                  number5.photo,
                                  number6.photo,
                                  number7.photo,
                                  number8.photo,
                                  number9.photo,
                                  number10.photo,
                                  ]mutableCopy];

    
  
    return self.arrayOfPhotos;
}

-(NSInteger)getNumberOfSubjects
{
    NSMutableArray *subjects = [[NSMutableArray alloc] init];
  
    for (Photos *picture in self.arrayOfPhotoObjects) {
        
        if (![subjects containsObject:picture.subject]) {
            
            [subjects addObject:picture.subject];
        }
    }
    
    return [subjects count];
    
}


@end
