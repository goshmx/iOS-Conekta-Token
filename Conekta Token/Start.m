//
//  ViewController.m
//  Conekta Token
//
//  Created by TRON on 28/11/15.
//  Copyright © 2015 TRON. All rights reserved.
//

#import "Start.h"

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    Conekta *conekta = [[Conekta alloc] init];
    
    [conekta setDelegate: self];
    
    [conekta setPublicKey:@"key_KJysdbf6PotS2ut2"];
    
    [conekta collectDevice];
    
    Card *card = [conekta.Card initWithNumber: @"4242424242424242" name: @"Julian Ceballos" cvc: @"123" expMonth: @"10" expYear: @"2018"];
    
    Token *token = [conekta.Token initWithCard:card];
    
    [token createWithSuccess: ^(NSDictionary *data) {
        NSLog(@"%@", data);
    } andError: ^(NSError *error) {
        NSLog(@"%@", error);
    }];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
