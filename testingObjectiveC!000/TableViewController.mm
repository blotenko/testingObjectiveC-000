//
//  TableViewController.m
//  testingObjectiveC!000
//
//  Created by Blotenko on 20.01.2022.
//

#import "TableViewController.h"
#include "PageSizeClass.hpp"

@implementation TableViewController

- (id)init {
  self = [super init];
  if(self){
     
  }
  return self;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self->one.size();
}

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *identifier = tableColumn.identifier;
    NSTableCellView *cell = [tableView makeViewWithIdentifier:identifier owner:self];
    NSString* result = [NSString stringWithUTF8String:one[row]->getId().c_str()];
    cell.textField.stringValue = result;

    return cell;
}

-(IBAction)add:(id)sender{
    string enteredId = [[_textfieldId stringValue] UTF8String];
    string enteredWidth = [[_textfieldWidth stringValue] UTF8String];
    string enteredHeight =[[_textfieldHeight stringValue] UTF8String];
    if(checkIdForRepeat(one,enteredId)){
        addElem(one,enteredId,enteredWidth,enteredHeight);
    };
    [tableview reloadData];
}

-(IBAction)deletE:(id)sender{
    
    NSInteger selectedRow = [tableview selectedRow];
    unsigned long index = selectedRow;
    if(index!=-1){
        
        delete one[index];
        one.erase(one.begin() + index);
        
        [tableview reloadData];
    }
    _labelForWidth.stringValue =@"";
    _labelForHeight.stringValue =@"";
}



- (IBAction)columnChangeSelected:(id)sender
{
    NSInteger selectedRow = [tableview selectedRow];
    if (selectedRow != -1) {
        NSString* result = [NSString stringWithUTF8String:one[selectedRow]->getWidth().c_str()];
        _labelForWidth.stringValue =result;
        result = [NSString stringWithUTF8String:one[selectedRow]->getHeight().c_str()];
        _labelForHeight.stringValue =result;
    }
    else {
    }
}



-(IBAction)download:(id)sender{
    NSOpenPanel *panel = [NSOpenPanel openPanel];
    [panel setCanChooseFiles:YES];
    [panel setCanChooseDirectories:YES];
    [panel setAllowsMultipleSelection:YES];

    NSInteger clicked = [panel runModal];

    if (clicked == NSModalResponseOK) {
        for (NSURL *url in [panel URLs]) {
            NSString *filename = [url path] ;
            string command = [filename UTF8String];
            
            one = loadFromFile(command);
            [tableview reloadData];
        }
    }
    
}







@end
