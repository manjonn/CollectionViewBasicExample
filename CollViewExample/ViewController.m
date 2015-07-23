//
//  ViewController.m
//  CollViewExample
//
//  Created by Manjula Jonnalagadda on 7/23/15.
//  Copyright (c) 2015 Manjula Jonnalagadda. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *colelctionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;

}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    CGFloat redComponent=arc4random()%255/255.0;
    CGFloat greenComponent=arc4random()%255/255.0;
    CGFloat blueComponent=arc4random()%255/255.0;
    cell.contentView.backgroundColor=[UIColor colorWithRed:redComponent green:greenComponent blue:blueComponent alpha:1.0];
    cell.label.text=[NSString stringWithFormat:@"Cell Num %ld",indexPath.row];
    return cell;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    CustomCollectionViewCell *cell=(CustomCollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    cell.label.text=@"selected";
    
}

@end
