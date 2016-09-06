//
//  ViewController.m
//  RovarSprak
//
//  Created by Thomas on 2016-02-02.
//  Copyright © 2016 Thomas Månsson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Result;
@property (weak, nonatomic) IBOutlet UITextField *inputWordToTranslate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)Oversatt:(id)sender {
    
    NSString *result = @"";
    
    for(int i = 0; i < self.inputWordToTranslate.text.length; i++) {
        char c = [self.inputWordToTranslate.text characterAtIndex:i];
        
        if(c == 'a' ||
           c == 'o' ||
           c == 'u' ||
           c == 'i' ||
           c == 'e' ||
           c == 'y' ||
           c == ' ') {
            result = [NSString stringWithFormat:@"%@%c", result, c];
        }
        else {
            result = [NSString stringWithFormat:@"%@%co%c", result, c, c];
        }
    }
    self.Result.text = result;
}

@end
