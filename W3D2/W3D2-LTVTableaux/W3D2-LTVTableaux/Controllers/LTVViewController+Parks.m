//
//  LTVViewController+Parks.m
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-12.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LTVTableViewCell.h"
#import "NationalPark.h"
#import "ParkBuilder.h"

@implementation LTVViewController (Parks)

#pragma mark - Loading of national parks

- (NSArray *)initializeParks: (NSArray *)nationalParks {
    self.nationalParks = nationalParks;
    return self.naturalParks;
}

- (void)useParkBuilder: (ParkBuilder *)parkBuilder {
    parkBuilder = [parkBuilder buildParkWithName:@"Akami-Uapishkᵁ-KakKasuak-Mealy Mountains" andNickname:@"akami" Location:@"Newfoundland and Labrador" andYear:2015 forArea:10700 andImage:nil fromRegion:@"East coast boreal" andText:nil andReserveStatus:nil];
    return
}

@end
