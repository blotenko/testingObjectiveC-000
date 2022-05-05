//
//  TableViewController.h
//  testingObjectiveC!000
//
//  Created by Blotenko on 20.01.2022.
//
#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>
#include "PageSizeClass.hpp"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController :NSObject <NSTableViewDataSource, NSTableViewDelegate>{

IBOutlet NSTableView* tableview;
    vector<PageSize * > one;
}

-(IBAction)add:(id)sender;
-(IBAction)deletE:(id)sender;
-(IBAction)download:(id)sender;

-(IBAction)columnChangeSelected:(id)sender;


@property (weak) IBOutlet NSTextField *labelForWidth;
@property (weak) IBOutlet NSTextField *labelForHeight;

@property (weak) IBOutlet NSTextField *textfieldId;
@property (weak) IBOutlet NSTextField *textfieldWidth;
@property (weak) IBOutlet NSTextField *textfieldHeight;




@end


NS_ASSUME_NONNULL_END
