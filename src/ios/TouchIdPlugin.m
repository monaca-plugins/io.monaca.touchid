//
//  TouchIdPlugin.m
//  Cordova Plugin to support Touch ID
//
//  Copyright(c) 2014 Monaca (http://monaca.mobi/)
//  Distributed under Apache 2.0 License

#import "TouchIdPlugin.h"
#import <LocalAuthentication/LocalAuthentication.h>

@implementation TouchIdPlugin

-(void)auth:(CDVInvokedUrlCommand*)command{
    
    NSString *myLocalizedReasonString = @"";
    
    if (command.arguments.count > 0) {
        if ([command.arguments objectAtIndex:0] && [[command.arguments objectAtIndex:0] isKindOfClass:[NSString class]]) {
            myLocalizedReasonString = [command.arguments objectAtIndex:0];
        }
    }
    
    LAContext *myContext = [[LAContext alloc] init];
    NSError *authError = nil;
    
    if ([myContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&authError]) {
        
        [myContext evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                  localizedReason:myLocalizedReasonString
                            reply:^(BOOL succes, NSError *error) {
                                if (succes) {
                                    // success
                                    
                                    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
                                    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                                    
                                } else {
                                    // fail
                                    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:error.description];
                                    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
                                }
                            }];
    } else {
        // Could not evaluate policy; look at authError and present an appropriate message to user

        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:authError.description];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
    
}

@end
