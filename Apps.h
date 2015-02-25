//
//  Apps.h
//  TabView
//
//  Created by Wellington Pardim Ferreira on 2/25/15.
//  Copyright (c) 2015 Wellington Pardim Ferreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Apps : NSObject

@property NSString *nome,*categoria,*desc,*img;

-(instancetype)initWithNome:(NSString *)nome andCategoria:(NSString *)cat andDesc:(NSString *)desc andImg:(NSString *)img;

@end
