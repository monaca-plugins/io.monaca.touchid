//
//  TouchIdPlugin.h
//  Cordova Plugin to support Touch ID
//
//  Copyright(c) 2014 Monaca (http://monaca.mobi/)
//  Distributed under Apache 2.0 License

#import <Cordova/CDV.h>

@interface TouchIdPlugin : CDVPlugin

-(void)auth:(CDVInvokedUrlCommand*)command;

@end
