//
//  LTVTableViewCell.m
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-11.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import "LTVTableViewCell.h"

@implementation LTVTableViewCell

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self.contentView addSubview: [[[NSBundle mainBundle] loadNibNamed:@"LTVTableViewCell.xib" owner:self options:nil] objectAtIndex:0]];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
