//
//  RFCreatePDFWC.m
//  PDFStduy
//
//  Created by wangdazhitech on 3/24/14.
//  Copyright (c) 2014 wangdazhi. All rights reserved.
//

#import "RFCreatePDFWC.h"
#import "PDFWC.h"
static RFCreatePDFWC * shareInstance=nil;
@interface RFCreatePDFWC ()

@end

@implementation RFCreatePDFWC

#pragma get
-(NSString *) getPDFPath
{
    return @"/Users/wangdazhitech/Documents/test/createPDF/new.pdf";
}
#pragma IBAction
/**
 @URL:http://stackoverflow.com/questions/4077747/how-do-i-generate-pdfs-from-images-in-objective-c-on-mac-os
 @bref:
**/
-(IBAction) createAT:(id)sender
{
    onePDF=[[PDFDocument alloc] init];
    PDFPage * page=[[PDFPage alloc] init];
    [onePDF insertPage:page atIndex: [onePDF pageCount]];
    //[onePDF insertPage]
    
    [onePDF writeToFile: [self getPDFPath]];
}
-(IBAction) addNewPageAT:(id)sender
{
    [[PDFWC shareWC] loadPDF:[self getPDFPath]];
    PDFPage * page=[[PDFPage alloc] init];
    [onePDF insertPage:page atIndex: [onePDF pageCount]];
 [onePDF writeToFile: [self getPDFPath]];

}
-(IBAction) reloadAT:(id)sender
{
    [[PDFWC shareWC] loadPDF:[self getPDFPath]];
    [[[PDFWC shareWC] window] makeKeyAndOrderFront:self];
}
#pragma life
+(RFCreatePDFWC *) shareWC
{
    if (shareInstance==nil) {
        shareInstance=[[RFCreatePDFWC alloc] initWithWindowNibName:@"RFCreatePDFWC"];
    }
    return shareInstance;
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
