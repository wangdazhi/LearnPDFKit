//
//  PDFWC.h
//  PDFStduy
//
//  Created by wangdazhitech on 3/23/14.
//  Copyright (c) 2014 wangdazhi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Quartz/Quartz.h>
@interface PDFWC : NSWindowController
{
    IBOutlet PDFView * mainPDFView;
}
+(PDFWC *) shareWC;
-(void) loadPDF:(NSString * ) oneFilePath;
-(IBAction) zoomOut:(id)sender;
-(IBAction) zoomIn:(id)sender;
@end
