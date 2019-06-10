  //
  //  ArtistViewController.m
  //  RandomArtists
  //
  //  Created by steve on 2018-08-06.
  //  Copyright © 2018 steve. All rights reserved.
  //

#import "ArtistViewController.h"
#import "ArtistManager.h"
#import "Artist.h"

@interface ArtistViewController ()
@property (nonatomic, strong) ArtistManager *manager;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ArtistViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.manager = [ArtistManager new];
  [self updateView];
}

- (void)updateView {
  Artist *artist = [self.manager randomArtist];
  self.label.text = artist.name;
  [self.label sizeToFit];
  self.imageView.image = artist.image;
}

- (IBAction)randomArtistTapped {
  [self updateView];
}


@end
