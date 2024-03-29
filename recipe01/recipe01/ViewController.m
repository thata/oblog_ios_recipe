//
//  ViewController.m
//  recipe01
//
//  Created by 畠山 貴 on 11/12/17.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize text = _text;
@synthesize button = _button;

- (IBAction)lookup:(id)sender
{
    UIReferenceLibraryViewController *vc;
    NSString *word = _text.text;

    // 辞書に指定した単語があるかどうかを確認し...
    if ([UIReferenceLibraryViewController dictionaryHasDefinitionForTerm:word]) {
        // あった場合は辞書の検索結果を表示
        vc = [[UIReferenceLibraryViewController alloc] initWithTerm:word];
        [self presentModalViewController:vc animated:YES];
    } else {
        // 無かった場合は見つからなかったよとアラートビューを表示
        UIAlertView *alertView;
        alertView = [[UIAlertView alloc] init];
        [alertView setMessage:@"指定した単語は辞書に見つかりませんでした。"];
        [alertView addButtonWithTitle:@"OK"];
        [alertView setCancelButtonIndex:0];
        [alertView show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
