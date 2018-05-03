//
//  main.m
//  Assignment7
//
//  Created by Chao Hsien Li on 2018-04-23.
//  Copyright © 2018 Chao Hsien Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p1 = [[Patient alloc] initWithName:@"Alex" AndGender:MALE AndAge:21 AndHasHealthCard:NO];
        Patient *p2 = [[Patient alloc] initWithName:@"Miho" AndGender:FEMALE AndAge:26 AndHasHealthCard:YES];
        Patient *p3 = [[Patient alloc] initWithName:@"Elif" AndGender:FEMALE AndAge:28 AndHasHealthCard:YES];
        
        Doctor *d1 = [[Doctor alloc] initWithName:@"Kana" AndSpecialty:@"Brain Surgeon"];
        
        // USER STORY
        // 1 Patient can visit a doctor
        // 2 Doctor can accept a patient if the patient has a valid health card
        if ([p2 visitDoctor: d1]) { // or put p1
            NSLog(@"SYSTEM: SUCCESS");
        } else {
            NSLog(@"SYSTEM: FAILED TO VISIT");
        }
    }
    return 0;
}
