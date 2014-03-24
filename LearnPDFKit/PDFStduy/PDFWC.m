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

@implementation PDFWC

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

- (void)windowDidLoad
{
    [super windowDidLoad];
    
      [mainPDFView setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
    
    PDFDocument * onePDF=[[PDFDocument alloc] initWithURL:[NSURL fileURLWithPath:@"/Users/wangdazhitech/Music/jQuery权威指南.pdf"]];
    [mainPDFView setDocument:onePDF];
    
    
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
