//
//  LTVTableViewCell.h
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-11.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LTVTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *parkPhoto;
@property (weak, nonatomic) IBOutlet UILabel *parkName;


- (instancetype) initWithCoder:(NSCoder *)coder;

@end

NS_ASSUME_NONNULL_END
