//
//  PDFWC.m
//  PDFStduy
//
//  Created by wangdazhitech on 3/23/14.
//  Copyright (c) 2014 wangdazhi. All rights reserved.
//

#import "PDFWC.h"
#import <Quartz/Quartz.h>

@interface PDFWC ()

@end

static PDFWC * shareInstance=nil;

@implementation PDFWC

#pragma mark zoom

-(IBAction) zoomOut:(id)sender
{
    if ([mainPDFView document]!=nil) {
        [mainPDFView zoomOut:self];
    }
}
-(IBAction) zoomIn:(id)sender
{
    if ([mainPDFView document]!=nil) {
        [mainPDFView zoomIn:self];
    }
    //[[mainPDFView document] ]
}

#pragma mark life
+(PDFWC *) shareWC
{
    if (shareInstance==nil) {
        shareInstance=[[PDFWC alloc] initWithWindowNibName:@"PDFWC"];
    }
    return shareInstance;
}
-(void)awakeFromNib
{
   // [mainPDFView setFrame:self.window.frame];
    [mainPDFView setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

//https://developer.apple.com/library/mac/documentation/graphicsimaging/Conceptual/PDFKitGuide/PDFKit_Prog_Tasks/PDFKit_Prog_Tasks.html

-(void) loadPDF:(NSString * ) oneFilePath
{
    PDFDocument * onePDF=[[PDFDocument alloc] initWithURL:[NSURL fileURLWithPath:oneFilePath]];
    [mainPDFView setDocument:onePDF];

}
- (void)windowDidLoad
{
    [super windowDidLoad];
    
      [mainPDFView setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
    
    
    
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
