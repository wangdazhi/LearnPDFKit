//
//  RFCreatePDFWC.h
//  PDFStduy
//
//  Created by wangdazhitech on 3/24/14.
//  Copyright (c) 2014 wangdazhi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>
@interface RFCreatePDFWC : NSWindowController
{
    PDFDocument * onePDF;
}
+(RFCreatePDFWC *) shareWC;
-(IBAction) createAT:(id)sender;
-(IBAction) reloadAT:(id)sender;
-(IBAction) addNewPageAT:(id)sender;
@end
