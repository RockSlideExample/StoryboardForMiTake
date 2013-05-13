//
//  ListEditViewController.m
//  StoryboardTest
//
//  Created by Rock Su on 13/5/13.
//  Copyright (c) 2013年 Rock Su. All rights reserved.
//

#import "ListEditViewController.h"

@interface ListEditViewController ()

@end

@implementation ListEditViewController
@synthesize editText;
@synthesize preViewController;
@synthesize selection;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    editText.text = [selection objectForKey:@"object"];
    [editText becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    if ([preViewController respondsToSelector:@selector(setEditedSelection:)]) {
        //结束编辑
        [editText endEditing:YES];
        NSIndexPath *indexPath = [selection objectForKey:@"indexPath"];
        id object = editText.text;
        NSDictionary *editedSelection = [NSDictionary dictionaryWithObjectsAndKeys:
                                         indexPath, @"indexPath",
                                         object, @"object",
                                         nil];
        //设置上一个ViewController中的editedSelection，由于设置editedSelection方法
        //已经重写，从而对应在表格中的数据会发生变化
        [preViewController setValue:editedSelection forKey:@"editedSelection"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
