//
//  FrequencyManager.m
//  
//
//  Created by Ronan McHugh on 13/03/2016.
//
//

#import "FrequencyManager.h"
#import <ExternalAccessory/ExternalAccessory.h>

@interface FrequencyManager ()

@property (nonatomic, strong)EAAccessoryManager *accessoryManager;
@property (nonatomic, strong)EAAccessory *vhfRadioCase;

@end

@implementation FrequencyManager

- (instancetype) init {
    if (self) {
        _accessoryManager = [EAAccessoryManager sharedAccessoryManager];
        if ([self hasConnectedDevicesForManager:_accessoryManager]) {
            _vhfRadioCase = [self getConnectedDeviceForManager:_accessoryManager];
        }
    }
    return self;
}

- (BOOL)hasConnectedDevicesForManager:(EAAccessoryManager *)manager {
    if(manager.connectedAccessories.count >=1){
        return YES;
    }
    return NO;
}

// hard crash if not checked with method above.
- (EAAccessory *)getConnectedDeviceForManager:(EAAccessoryManager *)manager {
    NSArray *connectedDevices = manager.connectedAccessories;
    EAAccessory *accessory = [connectedDevices firstObject];
    return accessory;
}



@end
