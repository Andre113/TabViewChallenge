//
//  Apps.m
//  TabView
//
//  Created by Wellington Pardim Ferreira on 2/25/15.
//  Copyright (c) 2015 Wellington Pardim Ferreira. All rights reserved.
//

#import "Apps.h"

@implementation Apps


-(instancetype)initWithNome:(NSString *)nome andCategoria:(NSString *)cat andDesc:(NSString *)desc andImg:(NSString *)img{
    self=[super init];

    _nome=nome;
    _categoria=cat;
    _desc=desc;
    _img=img;
    return self;
}

@end
